package treerex.hydra.DataStructures.Constraints;

import java.util.List;

import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.SolverType;

public class Rule5Constraint_EXAMPLE extends HydraConstraint {

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

    public Rule5Constraint_EXAMPLE(

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
            return XXXXXXXXXXXX
        } else if (Hydra.solver == SolverType.SAT) {
            return XXXXXXXXXXXX
        }
        return "N/A";

    }
}
