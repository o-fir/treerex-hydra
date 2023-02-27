package treerex.hydra.DataStructures.Constraints;

import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.SolverType;


/**
 * If there are no reductions for a method, then we add a special action noop as the unique reduction of this method.
 */
public class Rule14ExtraConstraint extends HydraConstraint {
    private IntVar ifPartVar;
    private int ifPartVal;
    private IntVar thenPartVar;

    public Rule14ExtraConstraint(IntVar ifPartVar, int ifPartVal, IntVar thenPartVar) {

        this.ifPartVar = ifPartVar;
        this.ifPartVal = ifPartVal;
        this.thenPartVar = thenPartVar;
    }

    public String toString() {
        if (Hydra.solver == SolverType.CSP) {
            String out = "constraint " + ifPartVar.getName() + "=" + ((ifPartVal + 1) * -1) + " -> "
                    + thenPartVar.getName()
                    + "=0;\n";

            return out;

        } else if (Hydra.solver == SolverType.SMT) {
            
            return "(assert (=> (= " + ifPartVar.getName() + " " + ((ifPartVal + 1) * -1) + ") (= " + thenPartVar.getName() + " 0)))\n";
            
        } else if (Hydra.solver == SolverType.SAT) {
            // TODO: Implement for SAT
            return "";
        }
        return "N/A";

    }
}