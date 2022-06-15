/* En un hospital nacen bebés niños y niñas se desea hacer un programa para saber cuántos son niños y cuántas son niñas.
El programa finaliza cuando se terminen los nacimientos.*/

import java.util.Scanner;

public class Hospital {
    public static void main(String[] args) {

        Scanner entradaTeclado = new Scanner(System.in);

        int opcion;

        int contadorNinos = 0;

        int contadorNinas = 0;

        do {

            System.out.println("Para añadir un niño pulsa 1");
            System.out.println("Para añadir un niña pulsa 2");
            System.out.println("0 para salir");

            opcion = entradaTeclado.nextInt();

            switch (opcion) {
                case 1:
                    contadorNinos++;
                    break;
                case 2:
                    contadorNinas++;
                    break;
            }

            System.out.println("Hay un total de: " + contadorNinas + " niñas y " + contadorNinos + " niños. \n");

        } while (opcion != 0);
    }

}
