/*
 * This Java source file was generated by the Gradle 'init' task.
 */
package treerex.hydra;

import java.io.IOException;
import java.util.List;

import fr.uga.pddl4j.parser.DefaultParsedProblem;
import fr.uga.pddl4j.parser.ErrorManager;
import fr.uga.pddl4j.parser.Message;
import fr.uga.pddl4j.parser.Parser;
import fr.uga.pddl4j.planners.LogLevel;
import fr.uga.pddl4j.problem.DefaultProblem;
import treerex.hydra.DataStructures.Layer;
import treerex.hydra.DataStructures.SolverType;
import treerex.hydra.Encoder.ProblemEncoder;
import treerex.hydra.Preprocessing.NetworkGenerator;

public class Hydra {

    /**
     * The main method the class. The first argument must be the path to the PDDL
     * domain description and the second
     * argument the path to the PDDL problem description.
     *
     * @param args the command line arguments.
     */
    public static String projectDir = "";
    public static SolverType solver;

    public static void main(String[] args) {

        String s = System.getProperty("user.dir");
        projectDir = s.replaceAll("\\\\", "/");
        // Checks the number of arguments from the command line
        // If no arguments - we will run the planner on Transport p0.
        // Useful, if we want to quickly debug the program
        if (args.length == 0) {
            System.out.println("No args. Running on ipc2020 TO Transport p0");
            String dom = projectDir + "/benchmarks/ipc2020/total-order/Transport/domain.hddl";
            String p = projectDir + "/benchmarks/ipc2020/total-order/Transport/pfile01.hddl";
            args = new String[] {
                    dom,
                    p };
        }
        // Otherwise, we need 2 arguments - domain and proble mpath
        else if (args.length != 3) {
            System.out.println("Error. Need 3 arguments - sat/smt/csp AND domainPath AND problemPath");
            return;
        }

        if (args[0].toLowerCase().equals("csp")) {
            solver = SolverType.CSP;
        } else if (args[0].toLowerCase().equals("smt")) {
            solver = SolverType.SMT;
        } else if (args[0].toLowerCase().equals("sat")) {
            solver = SolverType.SAT;
        }

        try {

            // 1. PARSE THE PROBLEM
            // Creates an instance of the PDDL parser
            final Parser parser = new Parser();
            // Disable log
            parser.setLogLevel(LogLevel.OFF);
            // Parses the domain and the problem files.
            final DefaultParsedProblem parsedProblem = parser.parse(args[1], args[2]);
            // Gets the error manager of the parser
            final ErrorManager errorManager = parser.getErrorManager();
            // Checks if the error manager contains errors
            if (!errorManager.isEmpty()) {
                // Prints the errors
                for (Message m : errorManager.getMessages()) {
                    System.out.println(m.toString());
                }
            }
            // Create a problem
            final DefaultProblem problem = new DefaultProblem(parsedProblem);

            // Instantiate the planning problem
            problem.instantiate();

            // Prints that the domain and the problem were successfully parsed
            System.out.print("\nparsing domain file \"" + args[1] + "\" done successfully");
            System.out.print("\nparsing problem file \"" + args[2] + "\" done successfully\n\n");

            // 2. CREATE THE NETWORK
            List<Layer> network = NetworkGenerator.generateInitialNetwork(problem);

            // 3. ENCODE THE PROBLEM
            int timeout = 300000; // timeout
            try {
                ProblemEncoder.encodeProblemInRows(timeout, network, problem, args);
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            // This exception could happen if the domain or the problem does not exist
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }
}
