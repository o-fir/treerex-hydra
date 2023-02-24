package treerex.hydra.DataStructures;

import java.util.ArrayList;
import java.util.List;

public class IntVar {

    private String varName;
    private List<Integer> domain;
    private int outputValue;
    private Integer pandaValidatorID;

    public IntVar(List<Integer> domain, String name) {

        this.domain = domain;
        this.varName = name;
        this.pandaValidatorID = null;
    }

    public String getName() {
        return this.varName;
    }

    public void setSolutionValue(int val) {
        this.outputValue = val;
    }

    public List<Integer> getDomain() {
        return this.domain;
    }

    public int getValue() {
        return this.outputValue;
    }

    public String toString() {
        String tmp = "";
        tmp += domain;
        tmp = tmp.replace("[", "{").replace("]", "}");
        return "var" + tmp + ":" + varName + ";\n";

    }

    public Integer getPandaID() {
        return this.pandaValidatorID;
    }

    public void setPandaID(int id) {
        this.pandaValidatorID = id;
    }
}
