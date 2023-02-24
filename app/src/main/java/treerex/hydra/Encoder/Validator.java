package treerex.hydra.Encoder;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import fr.uga.pddl4j.problem.Problem;
import fr.uga.pddl4j.problem.Task;
import fr.uga.pddl4j.problem.operator.Method;
import treerex.hydra.Hydra;
import treerex.hydra.DataStructures.IntVar;
import treerex.hydra.DataStructures.Layer;
import treerex.hydra.HelperFunctions.PrintFunctions;

public class Validator {
    static int counter = 1;

    // READ THE MINIZINC OUTPUT FILE (txt) AND UPDATE THE IntVar SOLUTION VALUES
    // load the solution into memory
    // note that we assume that solution is primitive actions
    public static boolean parsePlan(String filepath)
            throws FileNotFoundException, IOException {
        File file = new File(filepath);
        // read file line by line
        // extract only methods and primitive tasks, ignore predicates
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            String line;
            while ((line = br.readLine()) != null) {
                // process the line
                line = line.substring(0, line.length() - 1);// remove ";"
                if (line.contains("=") && line.contains("_") && !line.contains("b")) {
                    String[] data = line.split(" = ");
                    String[] key = data[0].split("_");
                    String name = data[0];
                    int value = Integer.parseInt(data[1]);
                    int layer = Integer.parseInt(key[1]);
                    int cell = Integer.parseInt(key[2]);
                    // "c" for cell, p for predicate
                    if (name.contains("c")) {
                        ProblemEncoder.allVariables.get(layer)[cell].setSolutionValue(value);

                    } else if (name.contains("p_")) {
                        int clique = Integer.parseInt(key[3]);
                        ProblemEncoder.allCliques.get(layer)[cell][clique].setSolutionValue(value);

                    }
                }
            }
        }
        return true;
    }

    public static String printPandaOutput(List<IntVar[]> allVariables, List<Layer> network, Problem problem) {
        String out = "==>\n";
        int counter = 0;
        // Part 1. Primitive actions of the final layer AKA the plan
        IntVar[] lastLayer = allVariables.get(allVariables.size() - 1);
        for (IntVar v : lastLayer) {
            // ignore noop cells
            if (v.getValue() != 0) {
                int parsedVal = v.getValue() - 1;// shift the id
                out += counter + " " + PrintFunctions.actionToString(parsedVal, problem) + "\n";
                v.setPandaID(counter);
                counter++;
            }
        }
        // Part 2. Root
        String root = "root ";
        for (int i = 0; i < allVariables.get(0).length - 1; i++) {
            IntVar v = allVariables.get(0)[i];

            if (v.getPandaID() == null) {
                v.setPandaID(counter);
                counter++;
            }
            root += v.getPandaID() + " ";
        }
        out += "\n";
        out += root + "\n";
        out += "\n";
        // Part 3. For every layer but the last, go through every cell
        for (int layerId = 0; layerId < allVariables.size() - 1; layerId++) {
            IntVar[] layer = allVariables.get(layerId);
            for (int cellId = 0; cellId < layer.length; cellId++) {
                IntVar v = layer[cellId];
                if (v.getPandaID() == null) {
                    v.setPandaID(counter);
                    counter++;
                }
                // Case A. Cell is a method
                if (v.getValue() < 0) {
                    String task;
                    int parsedVal = v.getValue() * -1 - 1;
                    // get method's task
                    Method m = problem.getMethods().get(parsedVal);
                    Task t = problem.getTasks().get(m.getTask());
                    problem.getTaskSymbols().get(t.getSymbol());
                    task = problem.getTaskSymbols().get(t.getSymbol());
                    // get task params
                    String params = "";
                    for (int i = 0; i < t.getArguments().length; i++) {
                        params += problem.getConstantSymbols().get(t.getArguments()[i]) + " ";
                    }
                    // get method children
                    String children = "";
                    int maxE = network.get(layerId).getCells().get(cellId).getMaxE();
                    for (int iter = 0; iter < maxE; iter++) {
                        IntVar iterCell = allVariables.get(layerId + 1)[network.get(layerId).getNext(cellId) + iter];
                        // skip noops
                        if (iterCell.getValue() != 0) {
                            if (iterCell.getPandaID() == null) {
                                iterCell.setPandaID(counter);
                                counter++;
                            }
                            children += iterCell.getPandaID() + " ";
                        }

                    }

                    // output
                    out += v.getPandaID() + " " + task + " " + params + "-> " + m.getName() + " " + children + "\n";
                }
                // Case B. Cell is action
                // Ignore. Actions are already adressed via the last layer
            }
        }
        out += "<==";
        return out;
    }

}
