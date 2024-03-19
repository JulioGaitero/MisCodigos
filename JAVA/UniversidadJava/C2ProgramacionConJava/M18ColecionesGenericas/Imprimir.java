package C2ProgramacionConJava.M18ColecionesGenericas;

import java.util.Collection;

public class Imprimir {

    public static void imprimir(Collection coleccion) {
        for (Object elemento : coleccion) {
            System.out.println("Elemento: " + elemento);
        }

    }

}
