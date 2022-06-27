//Eliminar los espacios de una frase pasada por consola por el usuario.

package BateriaEjercicos;

import java.util.Scanner;

public class EliminarEspacios {

    public static void main(String[] args) {

        String frase;
        String fraseSinEspacios;
        Scanner entradaTeclado = new Scanner(System.in);


        System.out.println("Introduce una frase");
        frase = entradaTeclado.nextLine();
        fraseSinEspacios = frase.replace(" ","");

        System.out.println(fraseSinEspacios);
    }
}
