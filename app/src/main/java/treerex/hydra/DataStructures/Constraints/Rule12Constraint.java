package treerex.hydra.DataStructures.Constraints;

import java.util.List;

import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.SolverType;

/**
 * Any child cells no defined by a method of the parent cell must be filled with Noop actions.
 */
public class Rule12Constraint extends HydraConstraint {
    private IntVar ifPartVar;
    private List<IntVar> noops;

    public Rule12Constraint(IntVar ifPartVar, List<IntVar> noops) {

        this.ifPartVar = ifPartVar;
        this.noops = noops;
    }

    public String toString() {
        if (Hydra.solver == SolverType.CSP) {
            String tmp = "";
            for (IntVar vI : noops) {
                tmp += vI.getName() + "=0/\\";
            }
            tmp += "true";
            String out = "constraint " + ifPartVar.getName() + ">0" + " -> " + tmp + ";\n";

            return out;

        } else if (Hydra.solver == SolverType.SMT) {
            StringBuilder noopsAtChildrenCells = new StringBuilder("(and true ");
            for (IntVar vI : noops) {
                noopsAtChildrenCells.append("(= " + vI.getName() + " 0) ");
            }
            noopsAtChildrenCells.append(")");
            return "(assert (=> (> " + ifPartVar.getName() + " 0" + ") " + noopsAtChildrenCells
                    + "))\n";
        } else if (Hydra.solver == SolverType.SAT) {
            // TODO: Implement for SAT
            return "";
        } else {
            return "N/A";
        }
    }
}