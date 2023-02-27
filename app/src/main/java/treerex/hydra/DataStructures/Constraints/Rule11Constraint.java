package treerex.hydra.DataStructures.Constraints;

import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.SolverType;

/**
 * Rule 11: If an action occurs in a cell, then it will also occur
 * at the cell corresponding to the first child position at the next
 * hierarchical layer.
 */
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

        } else if (Hydra.solver == SolverType.SMT) {
            return "(assert (=> (>= " + ifPart.getName() + " 0) (= " + ifPart.getName() + " " + thenPart.getName()
                    + ")))\n";
        } else if (Hydra.solver == SolverType.SAT) {
            // TODO Implement for SAT
            return "";
        } else {
            return "N/A";
        }

    }
}
