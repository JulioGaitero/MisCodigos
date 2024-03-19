package C2ProgramacionConJava.M18ColecionesGenericas;

import java.util.HashSet;
import java.util.Set;

public class TestSets {

    public static void main(String[] args) {
        Set<String> miSet = new HashSet<>();

        miSet.add("Lunes");
        miSet.add("Martes");
        miSet.add("Miercoles");
        miSet.add("Jueves");
        miSet.add("Viernes");
        miSet.add("Sabado");
        miSet.add("Domingo");

        System.out.println("El set es mas rapido");
        System.out.println("No se pueden agregar elementos repetidos\n");

        Imprimir.imprimir(miSet);


    }
}
