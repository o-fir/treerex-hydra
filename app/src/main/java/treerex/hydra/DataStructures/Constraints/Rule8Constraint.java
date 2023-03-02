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

            StringBuilder t2f = new StringBuilder();
            StringBuilder f2t = new StringBuilder();

            // The formula for the frame axioms is:
            // pred1 ^ not(pred1_next_cell) => not(primitive) v action1 v action2 v ... v actionN
            // Which correspond in cnf to:
            // not(pred1) v pred1_next_cell v not(primitive) v action1 v action2 v ... v actionN

            int layerIdx = currentCellVar.getLayerIdx();
            int cellIdx = currentCellVar.getCellIdx();

            // First, get the fact that is being changed
            // System.out.println(PrintFunctions.predicateToString(predicateId, Hydra.problem2));
            int uniqueIdPred = SATUniqueIDCreator.getUniqueID(layerIdx, cellIdx, VariableType.PREDICATE, predicateId);
            // Get the fact in the next cell
            int uniqueIdPredNextCell = SATUniqueIDCreator.getUniqueID(layerIdx, cellIdx + 1, VariableType.PREDICATE, predicateId);

            // Get the primitive variable for this layer and cell
            int uniqueIdPrimitive = SATUniqueIDCreator.getUniqueID(layerIdx, cellIdx, VariableType.PRIMITIVE, 0);

            t2f.append(uniqueIdPred + " -" + uniqueIdPredNextCell + " -" + uniqueIdPrimitive + " ");

            
            // Get all actions which can occurs at this cell and which can remove this fact
            for (int destructorId : destructorActions) {
                // System.out.println("Destructor: " + PrintFunctions.actionToString(destructorId, Hydra.problem2));
                int uniqueIdAction = SATUniqueIDCreator.getUniqueID(layerIdx, cellIdx, VariableType.ACTION, destructorId);
                t2f.append(uniqueIdAction + " ");
            }
            t2f.append("0");

            // Now, we do the same thing with the opposite case
            // not(pred1_next_cell) ^ pred1 => not(primitive) v action1 v action2 v ... v actionN

            f2t.append("-" + uniqueIdPred + " " + uniqueIdPredNextCell + " -" + uniqueIdPrimitive + " ");

            // Get all actions which can occurs at this cell and which can add this fact
            for (int creatorId : creatorActions) {
                // System.out.println("Creator: " + PrintFunctions.actionToString(creatorId, Hydra.problem2));
                int uniqueIdAction = SATUniqueIDCreator.getUniqueID(layerIdx, cellIdx, VariableType.ACTION, creatorId);
                f2t.append(uniqueIdAction + " ");
            }
            f2t.append("0");

            return t2f.toString() + "\n" + f2t.toString() + "\n";
        }
        return "N/A";

    }
}
