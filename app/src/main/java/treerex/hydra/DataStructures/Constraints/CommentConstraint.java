package treerex.hydra.DataStructures.Constraints;

import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.SolverType;

public class CommentConstraint extends HydraConstraint {
    private String comment;

    public CommentConstraint(String comment) {

        this.comment = comment;
    }

    public String toString() {

        
        if (Hydra.solver == SolverType.CSP) {
            return "% " + comment + "\n";
        } else if (Hydra.solver == SolverType.SMT) {
            return XXXXXXXXXXXX
        } else if (Hydra.solver == SolverType.SAT) {
            return XXXXXXXXXXXX
        }


    }
}
