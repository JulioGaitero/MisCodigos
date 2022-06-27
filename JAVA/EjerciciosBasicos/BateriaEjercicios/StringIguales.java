// Pedir dos palabras por teclado, indicar si son iguales.

package BateriaEjercicos;

import java.util.Scanner;

public class StringIguales {

    public static void main(String[] args){

        String frase1;
        String frase2;
        Scanner entradaTeclado = new Scanner(System.in);

        System.out.println("Introduce la primera frase/palabra");
        frase1 = entradaTeclado.nextLine();

        System.out.println("Introduce la segunda frase/palabra");
        frase2 = entradaTeclado.nextLine();

        if(frase1.equals(frase2)){
            System.out.println("Las frases son iguales");
        }else {
            System.out.println("Las frases no son iguales");
        }


    }

}
