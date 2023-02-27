package treerex.hydra.DataStructures.Constraints;

import java.util.List;

import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.SolverType;

/**
 * If a reduction occurs in a cell, then if its subtask i is not primitive, one
 * of
 * the possible reduction must be true
 * in the cell corresponding to the i child position at the next hierarchical
 * layer.
 */
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

        } else if (Hydra.solver == SolverType.SMT) {
            StringBuilder possibleReductions = new StringBuilder("(or false ");
            for (Integer i : possibleMethods) {
                possibleReductions.append(" (= " + thenPartVar.getName() + " " + ((i + 1) * -1) + ")");
            }
            possibleReductions.append(")");

            return "(assert (=> (= " + ifPartVar.getName() + " " + ((ifPartVal + 1) * -1) + ") "
                    + possibleReductions.toString() + "))\n";

        } else if (Hydra.solver == SolverType.SAT) {
            // TODO: Implement for SAT
            return "";
        } else {
            return "N/A";
        }
    }
}
