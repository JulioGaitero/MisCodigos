// Mostrar la longitud de una cadena

package BateriaEjercicos;

import java.util.Scanner;

public class MostrarLongitudCadena {

    public static void main(String[] args){
        Scanner entradaTeclado = new Scanner(System.in);
        String frase;
        int letras;

        System.out.println("Introduce una frase");
        frase = entradaTeclado.nextLine();

        letras = frase.length();

        System.out.println("La frase tiene: " + letras+ " letras.");


    }

}
