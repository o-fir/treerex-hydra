package treerex.hydra.DataStructures.Constraints;

import java.util.List;

import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.DataStructures.SolverType;
import treerex.hydra.DataStructures.VariableType;
import treerex.hydra.Encoder.SATUniqueIDCreator;
import treerex.hydra.HelperFunctions.PrintFunctions;

/**
 * Rule 6: If an action is executed, then all its positive and negative
 * preconditions must be
 * true. In addition, all its positive and negative effects must be true.
 */
public class Rule5Constraint extends HydraConstraint {

    private IntVar ifVar;
    private int ifVal;
    private List<IntVar> posPrecVars;
    private List<Integer> posPrecVals;
    private List<IntVar> negPrecVars;
    private List<Integer> negPrecVals;
    private List<IntVar> posEffVars;
    private List<Integer> posEffVals;
    private List<IntVar> negEffVars;
    private List<Integer> negEffVals;

    public Rule5Constraint(

            IntVar ifVar,
            int ifVal,
            List<IntVar> posPrecVars,
            List<Integer> posPrecVals,
            List<IntVar> negPrecVars,
            List<Integer> negPrecVals,
            List<IntVar> posEffVars,
            List<Integer> posEffVals,
            List<IntVar> negEffVars,
            List<Integer> negEffVals) {

        this.ifVar = ifVar;
        this.ifVal = ifVal;
        this.posPrecVars = posPrecVars;
        this.posPrecVals = posPrecVals;
        this.negPrecVars = negPrecVars;
        this.negPrecVals = negPrecVals;
        this.posEffVars = posEffVars;
        this.posEffVals = posEffVals;
        this.negEffVars = negEffVars;
        this.negEffVals = negEffVals;
    }

    public String toString() {

        if (Hydra.solver == SolverType.CSP) {
            String tmpPrecs = "";
            for (int i = 0; i < posPrecVars.size(); i++) {
                tmpPrecs += posPrecVars.get(i).getName() + "=" + posPrecVals.get(i) + "/\\";
            }
            for (int i = 0; i < negPrecVars.size(); i++) {
                tmpPrecs += negPrecVars.get(i).getName() + "!=" + negPrecVals.get(i) + "/\\";
            }
            for (int i = 0; i < posEffVars.size(); i++) {
                tmpPrecs += posEffVars.get(i).getName() + "=" + posEffVals.get(i) + "/\\";
            }
            for (int i = 0; i < negEffVars.size(); i++) {
                tmpPrecs += negEffVars.get(i).getName() + "!=" + negEffVals.get(i) + "/\\";
            }
            tmpPrecs += "true";
            String tmp = "constraint " + ifVar.getName() + "=" + (ifVal + 1) + " -> " + tmpPrecs
                    + ";\n";

            return tmp;

        } else if (Hydra.solver == SolverType.SMT) {
            StringBuilder posPrecsStr = new StringBuilder("(and true ");
            for (int i = 0; i < posPrecVars.size(); i++) {
                posPrecsStr.append("(= " + posPrecVars.get(i).getName() + " " + posPrecVals.get(i) + ") ");
            }
            posPrecsStr.append(")");

            StringBuilder negPrecsStr = new StringBuilder("(and true ");
            for (int i = 0; i < negPrecVars.size(); i++) {
                negPrecsStr.append("(not (= " + negPrecVars.get(i).getName() + " " + negPrecVals.get(i) + ")) ");
            }
            negPrecsStr.append(")");

            StringBuilder posEffsStr = new StringBuilder("(and true ");
            for (int i = 0; i < posEffVars.size(); i++) {
                posEffsStr.append("(= " + posEffVars.get(i).getName() + " " + posEffVals.get(i) + ") ");
            }
            posEffsStr.append(")");

            StringBuilder negEffsStr = new StringBuilder("(and true ");
            for (int i = 0; i < negEffVars.size(); i++) {
                negEffsStr.append("(not (= " + negEffVars.get(i).getName() + " " + negEffVals.get(i) + ")) ");
            }
            negEffsStr.append(")");

            return "(assert (=> (= " + ifVar.getName() + " " + (ifVal + 1) + ") (and " + posPrecsStr.toString() + " "
                    + negPrecsStr.toString() + " " + posEffsStr.toString() + " " + negEffsStr.toString() + ")))\n";

        } else if (Hydra.solver == SolverType.SAT) {

            StringBuilder out = new StringBuilder();

            int layerIdx = ifVar.getLayerIdx();
            int cellIdx = ifVar.getCellIdx();
            
            // An implication is a disjunction of the negation of the antecedent and the consequent

            // System.out.println(PrintFunctions.actionToString(ifVal, Hydra.problem2));

            // First, get the unique ID for the action
            int satUniqueIDAction = SATUniqueIDCreator.getUniqueID(layerIdx, cellIdx, VariableType.ACTION, ifVal);

            for (int i = 0; i < posPrecVars.size(); i++) {
                int satUniqueIDPrec = SATUniqueIDCreator.getUniqueID(layerIdx, cellIdx, VariableType.PREDICATE, posPrecVals.get(i));
                // System.out.println("Pos precond: " + PrintFunctions.predicateToString(posPrecVals.get(i), Hydra.problem2));
                out.append("-" + satUniqueIDAction + " " + satUniqueIDPrec + " 0\n");
                
            }
            for (int i = 0; i < negPrecVars.size(); i++) {
                int satUniqueIDPrec = SATUniqueIDCreator.getUniqueID(layerIdx, cellIdx, VariableType.PREDICATE, negPrecVals.get(i));
                // System.out.println("Neg precond " + PrintFunctions.predicateToString(negPrecVals.get(i), Hydra.problem2));
                out.append("-" + satUniqueIDAction + " " + satUniqueIDPrec + " 0\n");
            }
            for (int i = 0; i < posEffVars.size(); i++) {
                int satUniqueIDPrec = SATUniqueIDCreator.getUniqueID(layerIdx, cellIdx + 1, VariableType.PREDICATE, posEffVals.get(i));
                // System.out.println("Pos eff " + PrintFunctions.predicateToString(posEffVals.get(i), Hydra.problem2));
                out.append("-" + satUniqueIDAction + " " + satUniqueIDPrec + " 0\n");
            }
            for (int i = 0; i < negEffVars.size(); i++) {
                int satUniqueIDPrec = SATUniqueIDCreator.getUniqueID(layerIdx, cellIdx + 1, VariableType.PREDICATE, negEffVals.get(i));
                // System.out.println("Neg eff " + PrintFunctions.predicateToString(negEffVals.get(i), Hydra.problem2));
                out.append("-" + satUniqueIDAction + " " + satUniqueIDPrec + " 0\n");
            }

            return out.toString();
        } else {
            return "N/A";
        }
    }
}
