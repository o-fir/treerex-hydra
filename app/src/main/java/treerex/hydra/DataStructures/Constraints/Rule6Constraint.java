package treerex.hydra.DataStructures.Constraints;

import java.util.List;

import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.SolverType;

/**
 * Rule 6: If a method is executed, then all its positive and negative
 * preconditions must be
 * true
 */
public class Rule6Constraint extends HydraConstraint {
    private IntVar ifVar;
    private int ifVal;
    private List<IntVar> posPrecVars;
    private List<Integer> posPrecVals;
    private List<IntVar> negPrecVars;
    private List<Integer> negPrecVals;

    public Rule6Constraint(

            IntVar ifVar,
            int ifVal,
            List<IntVar> posPrecVars,
            List<Integer> posPrecVals,
            List<IntVar> negPrecVars,
            List<Integer> negPrecVals) {

        this.ifVar = ifVar;
        this.ifVal = ifVal;
        this.posPrecVars = posPrecVars;
        this.posPrecVals = posPrecVals;
        this.negPrecVars = negPrecVars;
        this.negPrecVals = negPrecVals;
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
            tmpPrecs += "true";
            String tmp = "constraint " + ifVar.getName() + "=" + ((ifVal + 1) * -1) + " -> " + tmpPrecs
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
            return "(assert (=> (= " + ifVar.getName() + " " + ((ifVal + 1) * -1) + ") (and " + posPrecsStr.toString() + " "
                    + negPrecsStr.toString() + ")))\n";

        } else if (Hydra.solver == SolverType.SAT) {
            // TODO: Implement SAT version
            return "";
        } else {
            return "N/A";
        }

    }
}
