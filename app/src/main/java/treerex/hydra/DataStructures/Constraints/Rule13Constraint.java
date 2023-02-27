package treerex.hydra.DataStructures.Constraints;

import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.SolverType;

public class Rule13Constraint extends HydraConstraint {
    private IntVar ifPartVar;
    private int ifPartVal;
    private IntVar thenPartVar;
    private int thenPartVal;

    public Rule13Constraint(IntVar ifPartVar, int ifPartVal, IntVar thenPartVar, int thenPartVal) {

        this.ifPartVar = ifPartVar;
        this.ifPartVal = ifPartVal;
        this.thenPartVar = thenPartVar;
        this.thenPartVal = thenPartVal;
    }

    public String toString() {
        if (Hydra.solver == SolverType.CSP) {
        String tmp = "constraint " + ifPartVar.getName() + "=" + ((ifPartVal + 1) * -1) + " -> " + thenPartVar.getName()
                + "="
                + (thenPartVal + 1) + ";\n";

        return tmp;

    }else if(Hydra.solver==SolverType.SMT)

    {
        return XXXXXXXXXXXX
    }else if(Hydra.solver==SolverType.SAT)
    {
        return XXXXXXXXXXXX
    }return"N/A";

}
}
