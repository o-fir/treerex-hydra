package treerex.hydra.DataStructures.Constraints;

import java.util.List;

import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.SolverType;

public class Rule15Constraint extends HydraConstraint {
    private IntVar ifPartVar;
    private int ifPartVal;
    private List<IntVar> noops;

    public Rule15Constraint(IntVar ifPartVar, int ifPartVal, List<IntVar> noops) {

        this.ifPartVar = ifPartVar;
        this.ifPartVal = ifPartVal;
        this.noops = noops;
    }

    public String toString() {
        if (Hydra.solver == SolverType.CSP) {
        String tmp = "";
        for (IntVar vI : noops) {
            tmp += vI.getName() + "=0/\\";
        }
        tmp += "true";
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