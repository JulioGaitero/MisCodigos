//Modifica la aplicación anterior, para que nos pida el nombre que queremos introducir

package BateriaEjercicos;

import java.util.Scanner;

public class ImprimirVariableTeclado {

    public static void main(String[] args ){

        Scanner entradaTeclado = new Scanner(System.in);
        System.out.println("Pidiendo Valores por teclado  \n");
        System.out.println("Introduce un nombre:");
        String nombre2 = entradaTeclado.next();
        System.out.println("El nombre introducido es: " + nombre2 + "\n");
    }

}
