package treerex.hydra.DataStructures.Constraints;

import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.DataStructures.SolverType;
import treerex.hydra.DataStructures.VariableType;
import treerex.hydra.Encoder.SATUniqueIDCreator;

/**
 * Rule 7: Each action is primitive, each method is not primitive
 */
public class Rule7Constraint extends HydraConstraint {

    IntVar currentCell;
    private int idActionOrMethod;
    private VariableType type;

    public Rule7Constraint(IntVar currentCell, int idActionOrMethod, VariableType type) {
        this.currentCell = currentCell;
        this.idActionOrMethod = idActionOrMethod;
        this.type = type;
    }


    public String toString() {
        if (Hydra.solver == SolverType.SAT) {

            int layerIdx = currentCell.getLayerIdx();
            int cellIdx = currentCell.getCellIdx();

            // Get the unique ID for the primitive variable for this layer and cell 
            int uniqueIdPritimitiveVar = SATUniqueIDCreator.getUniqueID(layerIdx, cellIdx, VariableType.PRIMITIVE, idActionOrMethod);
            
            StringBuilder out = new StringBuilder();

            switch (this.type) {
                case ACTION:
                    // Get the unique ID for the action variable for this layer and cell
                    int uniqueIdActionVar = SATUniqueIDCreator.getUniqueID(layerIdx, cellIdx, VariableType.ACTION, idActionOrMethod);
                    out.append("-" + uniqueIdActionVar + " " + uniqueIdPritimitiveVar + " 0\n");
                    break;
                case METHOD:
                    // Get the unique ID for the method variable for this layer and cell
                    int uniqueIdMethodVar = SATUniqueIDCreator.getUniqueID(layerIdx, cellIdx, VariableType.METHOD, idActionOrMethod);
                    out.append("-" + uniqueIdMethodVar + " -" + uniqueIdPritimitiveVar + " 0\n");
                    break;
                default:
                    System.out.println("Error: Rule 7 is only implemented for actions and methods");
                    System.exit(1);
            }

            return out.toString();

        }
        else {
            System.out.println("Error: Rule 7 is only implemented for the SAT solver");
            System.exit(1);
        }

        return "N/A";
    }


    
}
