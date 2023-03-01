package treerex.hydra.DataStructures.Constraints;

import java.rmi.ConnectIOException;
import java.util.List;

import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.SolverType;
import treerex.hydra.DataStructures.VariableType;
import treerex.hydra.Encoder.SATUniqueIDCreator;
import treerex.hydra.HelperFunctions.PrintFunctions;

/**
 * Rule 8: Frame axioms: If a fact change between two consecutive cells then
 * there must be an action that
 * have changed this fact.
 */
public class Rule8Constraint extends HydraConstraint {
    private IntVar currentCellVar;
    private IntVar currentCellCliqueVar;
    private IntVar nextCellCliqueVar;
    private Integer predicateId;
    private List<Integer> destructorActions;
    private List<Integer> creatorActions;

    public Rule8Constraint(
            IntVar currentCellVar,
            IntVar currentCellCliqueVar,
            IntVar nextCellCliqueVar,
            Integer predicateId,
            List<Integer> destructorActions,
            List<Integer> creatorActions) {

        this.currentCellVar = currentCellVar;
        this.currentCellCliqueVar = currentCellCliqueVar;
        this.nextCellCliqueVar = nextCellCliqueVar;
        this.predicateId = predicateId;
        this.destructorActions = destructorActions;
        this.creatorActions = creatorActions;
    }

    public String toString() {

        if (Hydra.solver == SolverType.CSP) {
            String t2f = "";

            String tmpDest = "";
            for (int destructorId : destructorActions) {
                tmpDest += currentCellVar.getName() + "=" + (destructorId + 1) + "\\/";
            }
            tmpDest += currentCellVar.getName() + "<0";

            t2f = "constraint (" + currentCellCliqueVar.getName() + "=" + predicateId + "/\\"
                    + nextCellCliqueVar.getName()
                    + "!=" + predicateId + ")->" + tmpDest + ";\n";
            ///////////
            String f2t = "";
            String tmpProd = "";
            for (int creatorId : creatorActions) {
                tmpProd += currentCellVar.getName() + "=" + (creatorId + 1) + "\\/";
            }
            tmpProd += currentCellVar.getName() + "<0";
            f2t = "constraint (" + currentCellCliqueVar.getName() + "!=" + predicateId + "/\\"
                    + nextCellCliqueVar.getName()
                    + "=" + predicateId + ")->" + tmpProd + ";\n";
            //
            return t2f + f2t + "\n";

        } else if (Hydra.solver == SolverType.SMT) {

            StringBuilder descructorActionStr = new StringBuilder();
            
            if (destructorActions.size() > 0) {
                descructorActionStr.append("(or (< " + currentCellVar.getName() + " 0) ");
                for (int destructorId : destructorActions) {
                    descructorActionStr.append("(= " + currentCellVar.getName() + " " + (destructorId + 1) + ")");
                }
                descructorActionStr.append(") ");
            }
            else {
                descructorActionStr.append("(< " + currentCellVar.getName() + " 0)");
            }


            String t2f = "(assert (=> (and (= " + currentCellCliqueVar.getName() + " " + predicateId + ") (not (= "
                    + nextCellCliqueVar.getName() + " " + predicateId + "))) " + descructorActionStr.toString() + "))\n";

            StringBuilder creatorActionStr = new StringBuilder();

            if (creatorActions.size() > 0) {
                creatorActionStr.append("(or (< " + currentCellVar.getName() + " 0) ");
                for (int creatorId : creatorActions) {
                    creatorActionStr.append("(= " + currentCellVar.getName() + " " + (creatorId + 1) + ")");
                }
                creatorActionStr.append(") ");
            }
            else {
                creatorActionStr.append("(< " + currentCellVar.getName() + " 0)");
            }

            String f2t = "(assert (=> (and (not (= " + currentCellCliqueVar.getName() + " " + predicateId + ")) (= "
                    + nextCellCliqueVar.getName() + " " + predicateId + ")) " + creatorActionStr.toString() + "))\n";

            return t2f + f2t + "\n";
        } else if (Hydra.solver == SolverType.SAT) {

            int layerIdx = currentCellVar.getLayerIdx();
            int cellIdx = currentCellVar.getCellIdx();

            // First, get the fact that is being changed
            System.out.println(PrintFunctions.predicateToString(predicateId, Hydra.problem2));
            int uniqueIdPred = SATUniqueIDCreator.getUniqueID(layerIdx, cellIdx, VariableType.PREDICATE, predicateId);

            // Then get all the methods which can occurs at this cell (in the true rule, it uses the "primitive" variable, but we do not have it here...)
            for (Integer methodCurrentCell : currentCellVar.getDomain()) {

                // Pass if this is not a method
                if (methodCurrentCell >= 0) {
                    continue;
                }

                // Get the pddl4j ID of the method
                int methodId = -(methodCurrentCell * -1) - 1;

                // Get the unique ID of the method
                int uniqueIdMethod = SATUniqueIDCreator.getUniqueID(layerIdx, cellIdx, VariableType.METHOD, methodId);
            }

            // Finally, get all actions which can occurs at this cell and which can change the fact

            // TODO: Finish to implement for SAT
            return "";
        }
        return "N/A";

    }
}
