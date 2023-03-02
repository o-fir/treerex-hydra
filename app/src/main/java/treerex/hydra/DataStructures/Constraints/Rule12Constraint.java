package treerex.hydra.DataStructures.Constraints;

import java.util.HashSet;
import java.util.List;

import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.SolverType;
import treerex.hydra.DataStructures.VariableType;
import treerex.hydra.Encoder.SATUniqueIDCreator;

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

            StringBuilder out = new StringBuilder();

            int currentLayerIdx = ifPartVar.getLayerIdx();
            int currentCellIdx = ifPartVar.getCellIdx();

            StringBuilder noopsNextLayers = new StringBuilder();
            for (IntVar vI : noops) {
                int nextLayerIdx = currentLayerIdx + 1;
                int nextCellIdx = vI.getCellIdx();
                int nextNoopUniqueId = SATUniqueIDCreator.getUniqueID(nextLayerIdx, nextCellIdx, VariableType.NOOP, -1);
                noopsNextLayers.append(nextNoopUniqueId + " ");
            }

            for (Integer actionId : ifPartVar.getDomain()) {

                // If this is a method, continue
                if (actionId < 0) {
                    continue;
                }

                int currentActionUniqueId;

                if (actionId == 0) {
                    // This is a noop action
                    currentActionUniqueId = SATUniqueIDCreator.getUniqueID(currentLayerIdx, currentCellIdx, VariableType.NOOP, -1);
                } else {
                    // This is an action
                    int trueActionId = actionId - 1;
                    currentActionUniqueId = SATUniqueIDCreator.getUniqueID(currentLayerIdx, currentCellIdx, VariableType.ACTION, trueActionId);
                }

                out.append("-" + currentActionUniqueId + " " + noopsNextLayers + " 0\n");
            }

            return out.toString();
        } else {
            return "N/A";
        }
    }
}