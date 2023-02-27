package treerex.hydra.DataStructures.Constraints;

import java.util.List;

import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.SolverType;

public class Rule14Constraint extends HydraConstraint {
    private IntVar ifPartVar;
    private int ifPartVal;
    private IntVar thenPartVar;
    private List<Integer> possibleMethods;

    public Rule14Constraint(IntVar ifPartVar, int ifPartVal, IntVar thenPartVar, List<Integer> possibleMethods) {

        this.ifPartVar = ifPartVar;
        this.ifPartVal = ifPartVal;
        this.thenPartVar = thenPartVar;
        this.possibleMethods = possibleMethods;
    }

    public String toString() {
        if (Hydra.solver == SolverType.CSP) {
        String tmp = "";
        for (Integer i : possibleMethods) {
            tmp += thenPartVar.getName() + "=" + ((i + 1) * -1) + "\\/";
        }
        tmp += "false";
        String out = "constraint " + ifPartVar.getName() + "=" + ((ifPartVal + 1) * -1) + " -> " + tmp + ";\n";

        return out;

    }else if(Hydra.solver==SolverType.SMT)

    {
        return XXXXXXXXXXXX
    }else if(Hydra.solver==SolverType.SAT)
    {
        return XXXXXXXXXXXX
    }return"N/A";

}
}
