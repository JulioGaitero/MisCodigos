package C2ProgramacionConJava.M16APICollections;

import java.util.ArrayList;
import java.util.List;

public class TestList {

    public static void main(String[] args) {
        List miLista = new ArrayList();
        miLista.add("Lunes");
        miLista.add("Martes");
        miLista.add("Miercoles");
        miLista.add("Jueves");
        miLista.add("Viernes");
        miLista.add("Sabado");
        miLista.add("Domingo");

        System.out.println("Imprimir For");

        for (Object dia : miLista) {
            System.out.println("Dia: " + dia);
        }

        System.out.println("\nImprimir Lambda");
        miLista.forEach(dia -> System.out.println("DiaLambda: " + dia));
    }

}
