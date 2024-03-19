package C2ProgramacionConJava.M18ColecionesGenericas;

import java.util.ArrayList;
import java.util.List;

public class TestList {

    public static void main(String[] args) {
        List <String> miLista = new ArrayList<String>();
        miLista.add("Lunes");
        miLista.add("Martes");
        miLista.add("Miercoles");
        miLista.add("Jueves");
        miLista.add("Viernes");
        miLista.add("Sabado");
        miLista.add("Domingo");

        String diaGet = miLista.get(3);

        System.out.println("Dia por indice: " + diaGet + "\n");

        System.out.println("Imprimir For");

        for (Object dia : miLista) {
            System.out.println("Dia: " + dia);
        }

        System.out.println("\nImprimir Lambda");
        miLista.forEach(dia -> System.out.println("DiaLambda: " + dia));
    }

}
