package treerex.hydra.DataStructures.Constraints;

import java.util.List;

import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.SolverType;

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

            StringBuilder descructorActionStr = new StringBuilder("(or false ");
            for (int destructorId : destructorActions) {
                descructorActionStr.append("(= " + currentCellVar.getName() + " " + (destructorId + 1) + ")");
            }
            descructorActionStr.append(") ");

            String t2f = "(assert (=> (and (= " + currentCellCliqueVar.getName() + " " + predicateId + ") (not (= "
                    + nextCellCliqueVar.getName() + " " + predicateId + "))) " + descructorActionStr.toString() + "))\n";

            StringBuilder creatorActionStr = new StringBuilder("(or false ");
            for (int creatorId : creatorActions) {
                creatorActionStr.append("(= " + currentCellVar.getName() + " " + (creatorId + 1) + ")");
            }
            creatorActionStr.append(") ");

            String f2t = "(assert (=> (and (not (= " + currentCellCliqueVar.getName() + " " + predicateId + ")) (= "
                    + nextCellCliqueVar.getName() + " " + predicateId + ")) " + creatorActionStr.toString() + "))\n";

            return t2f + f2t + "\n";
        } else if (Hydra.solver == SolverType.SAT) {
            // TODO: Implement for SAT
            return "";
        }
        return "N/A";

    }
}
