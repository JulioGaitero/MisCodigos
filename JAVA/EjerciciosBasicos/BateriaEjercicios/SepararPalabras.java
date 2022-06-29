// Dada una frase, separarlo en palabras.

package BateriaEjercicos;

public class SepararPalabras {

    public static void main(String[] args){

        String cadenaTexto = "Esta es mi cadena de texto";

        String palabras[] = cadenaTexto.split(" ");

        for (int i = 0; i < palabras.length; i++) {
            System.out.println(palabras[i]);

        }

    }

}
