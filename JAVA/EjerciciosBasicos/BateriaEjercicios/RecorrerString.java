/* Del siguiente String «La lluvia en Asturias es una maravilla» cuenta cuantas vocales hay en total
   (recorre el String con charAt). */

package BateriaEjercicos;

public class RecorrerString {

    public static void main(String[] args) {

        String frase = "La lluvia en Asturias es una maravilla";
        int vocales = 0;

        for (int i = 0; i < frase.length(); i++) {

            if (frase.charAt(i) == 'a' || frase.charAt(i) == 'e' || frase.charAt(i) == 'i' ||
            frase.charAt(i) == 'o' || frase.charAt(i) == 'u' ) {
                vocales++;
            }

        }
        System.out.println("En total hay: " +vocales + " vocales.");

        // Reemplaza todas las a del String anterior por una e.

        System.out.println(frase.replace('a','e'));

        // Transforma cada carácter a su código ASCII

        for (int i=0;i<frase.length();i++){

            System.out.print((int)frase.charAt(i)+" ");

        }
    }
}


