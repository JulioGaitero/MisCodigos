package C2ProgramacionConJava.M16APICollections;

import java.util.HashMap;
import java.util.Map;

import static C2ProgramacionConJava.M16APICollections.Imprimir.imprimir;

public class TestMap {

    public static void main(String[] args) {

        Map miMap = new HashMap();

        miMap.put("Lunes", 1);
        miMap.put("Martes", 2);
        miMap.put("Miercoles", 3);
        miMap.put("Jueves", 4);
        miMap.put("Viernes", 5);
        miMap.put("Sabado", 6);
        miMap.put("Domingo", 7);

        int dia = (int) miMap.get("Lunes");
        System.out.println(dia);

        imprimir(miMap.keySet());
        imprimir(miMap.values());

    }

}
