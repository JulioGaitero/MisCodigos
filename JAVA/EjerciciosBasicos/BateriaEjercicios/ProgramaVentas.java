/* Realiza una aplicación que nos pida un número de ventas a introducir, después nos pedirá tantas ventas por teclado
        como número de ventas se hayan indicado. Al final mostrara la suma de todas las ventas. Piensa que es lo que
        se repite y lo que no.*/

package BateriaEjercicos;

import java.util.Scanner;

public class ProgramaVentas {

    public static void main(String[] args){

        int numeroVentas;
        int valorFinal = 0;
        Scanner entradaTeclado = new Scanner(System.in);

        System.out.println("Introdue el numero de ventas que vas a introducir");

        numeroVentas = entradaTeclado.nextInt();

        for (int i=1; i <= numeroVentas; i++ ){
            System.out.println("Introduce el valor de la venta numero: " +i);
            valorFinal += entradaTeclado.nextInt();
        }

        System.out.println("El precio final de todas las ventas es: " +valorFinal +"€");

    }
}
