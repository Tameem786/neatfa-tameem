package edu.unm;

import edu.unm.neat.jneat.Gene;
import edu.unm.neat.jneat.Neat;
import edu.unm.neat.jneat.Organism;
import edu.unm.neat.jneat.Population;
import org.apache.commons.io.IOUtils;

import java.io.*;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/**
 * @author John Ericksen
 */
public class Runner {

    private static final String DIRECTORY = "/home/john/dev/iAnt-ARGoS/";
    private static final String EXECUTABLE = "./build/source/iant_main";
    private static final Random RAND = new Random(System.currentTimeMillis());
    private static PrintStream OUT;

    static {
        try {
            OUT = new PrintStream(new FileOutputStream("runlog" + System.currentTimeMillis() + ".txt"));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            OUT = null;
        }
    }

    public static void main(String[] args) throws Exception {
        long start = System.currentTimeMillis();

        Neat.initbase();

        Neat.p_pop_size = 12;

        int availableProcessors = Runtime.getRuntime().availableProcessors();
        output("Available Processors: " + availableProcessors);

        String iAntXml = IOUtils.toString(new FileInputStream("iAnt.xml"));

        Population population = new Population(Neat.p_pop_size, 11, 2, 5, true, 1);
        population.verify();

        for (int e = 0; e < 100; e++) {
            output("Epoch " + e);

            long epochStart = System.currentTimeMillis();

            ExecutorService executor = Executors.newFixedThreadPool(availableProcessors);

            for (int i = 0; i < population.getOrganisms().size(); i++) {
                final Organism organism = (Organism) population.organisms.get(i);
                final String chromosome = buildChromosone(organism);
                final int chromosomei = i;
                ProcessExecutable processExecutable = new ProcessExecutable(DIRECTORY, new String[]{EXECUTABLE, "E" + e + "C" + i }, new ByteArrayInputStream(
                        iAntXml.replace("${chromosome}", chromosome)
                                .replace("${seed}", Integer.toString(RAND.nextInt()))
                                .getBytes()
                ),
                        new ProcessExecutable.OnResultCallback() {
                            @Override
                            public void onResult(Long result) {
                                organism.setFitness(result);
                                output("done: Fitness: " + result + " Chromosone (" + chromosomei + "): " + chromosome);
                            }
                        }
                );
                executor.execute(processExecutable);
            }

            executor.shutdown();

            while (!executor.awaitTermination(10, TimeUnit.SECONDS)) {}

            outputStatistics(e, population);

            population.epoch(e);

            output("Epoch " + e + " took " + (System.currentTimeMillis() - epochStart) + "ms");
        }

        output("Finished: " + (System.currentTimeMillis() - start) + "ms");
    }

    private static void outputStatistics(int epoch, Population population) {
        double min = Double.POSITIVE_INFINITY;
        double max = Double.NEGATIVE_INFINITY;
        double sum = 0;

        for (int i = 0; i < population.getOrganisms().size(); i++) {
            final Organism organism = (Organism) population.organisms.get(i);

            organism.getFitness();

            sum += organism.getFitness();
            min = Math.min(min, organism.getFitness());
            max = Math.max(max, organism.getFitness());
        }

        double average = sum / population.getOrganisms().size();

        output("Statistics Epoch " + epoch + ": " + sum + ", " + min + ", " + max + ", " + average);
    }

    private static String buildChromosone(Organism organism) {
        StringBuilder builder = new StringBuilder();

        for (int i = 0; i < organism.getGenome().getGenes().size(); i++) {
            Gene gene = (Gene) organism.getGenome().getGenes().get(i);

            builder.append(gene.getInnovation_num())
                    .append(",")
                    .append(gene.getEnable() ? "1" : "0")
                    .append(",")
                    .append(gene.getLnk().getIn_node().getNode_id())
                    .append(",")
                    .append(gene.getLnk().getOut_node().getNode_id())
                    .append(",")
                    .append(gene.getLnk().getWeight())
                    .append(";");
        }

        return builder.toString();
    }

    private static void output(String message){
        System.out.println(message);
        OUT.println(message);
    }
}
