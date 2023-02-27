package treerex.hydra.DataStructures.Constraints;

import java.util.List;

import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.SolverType;

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
                return XXXXXXXXXXXX
            } else if (Hydra.solver == SolverType.SAT) {
                return XXXXXXXXXXXX
            }
            return "N/A";

    }
}
