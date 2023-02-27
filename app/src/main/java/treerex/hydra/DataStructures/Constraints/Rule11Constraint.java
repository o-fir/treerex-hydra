package treerex.hydra.DataStructures.Constraints;

import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.SolverType;

public class Rule11Constraint extends HydraConstraint {
    private IntVar ifPart;
    private IntVar thenPart;

    public Rule11Constraint(IntVar ifPart, IntVar thenPart) {

        this.ifPart = ifPart;
        this.thenPart = thenPart;
    }

    public String toString() {
        if (Hydra.solver == SolverType.CSP) {
        String tmp = "constraint " + ifPart.getName() + ">=0 -> " + ifPart.getName() + "==" + thenPart.getName()
                + ";\n";

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
