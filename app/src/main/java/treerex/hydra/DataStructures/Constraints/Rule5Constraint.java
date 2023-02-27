package treerex.hydra.DataStructures.Constraints;

import java.util.List;

import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.DataStructures.SolverType;

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
            // TODO: Implement SAT version
            return "";
        } else {
            return "N/A";
        }
    }
}
