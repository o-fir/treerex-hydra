package treerex.hydra.DataStructures.Constraints;

import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.HydraConstraint;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.DataStructures.SolverType;

public class ArithmeticConstraint extends HydraConstraint {
    private IntVar leftHandVar;
    private IntVar rightHandVar;
    private String operator;
    private int constantVal;

    // Arithmetic constraint can either be
    // var = 5
    public ArithmeticConstraint(IntVar var, String operator, int val) {

        this.leftHandVar = var;
        this.constantVal = val;
        this.operator = operator;
    }

    // var1 = var2
    public ArithmeticConstraint(IntVar var1, String operator, IntVar var2) {

        this.leftHandVar = var1;
        this.rightHandVar = var2;
        this.operator = operator;
    }

    public String toString() {

        if (Hydra.solver == SolverType.CSP) {
            if (rightHandVar == null) {
                return "constraint " + leftHandVar.getName() + operator + constantVal + ";\n";
            } else {
                return "constraint " + leftHandVar.getName() + operator + rightHandVar.getName() + ";\n";
            }
        } else if (Hydra.solver == SolverType.SMT) {
            if (rightHandVar == null) {
                return XXXXXXXXXXXXX
            }else{
                return XXXXXXXXXXXXX
            }
        } else if (Hydra.solver == SolverType.SAT) {
            if (rightHandVar == null) {
                return XXXXXXXXXXXXX
            }else{
                return XXXXXXXXXXXXX
            }
        }
    }

    public IntVar getLeftHandVar() {
        return leftHandVar;
    }

    public int getConstant() {
        return constantVal;
    }

}
