package treerex.hydra.DataStructures.Constraints;

import java.util.List;

import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.SolverType;

/**
 * Any child cells no defined by a method of the parent cell must be filled with Noop actions.
 */
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

        } else if (Hydra.solver == SolverType.SMT) {
            StringBuilder noopsAtChildrenCells = new StringBuilder("(and true ");
            for (IntVar vI : noops) {
                noopsAtChildrenCells.append("(= " + vI.getName() + " 0) ");
            }
            noopsAtChildrenCells.append(")");
            return "(assert (=> (= " + ifPartVar.getName() + " " + ((ifPartVal + 1) * -1) + ") " + noopsAtChildrenCells
                    + "))\n";
        } else if (Hydra.solver == SolverType.SAT) {
            // TODO: Implement for SAT
            return "";
        } else {
            return "N/A";
        }
    }
}