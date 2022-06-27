// Realizar la suma del 1 al numero que indiquemos, este debe ser mayor que 1.

package BateriaEjercicos;

import java.util.Scanner;

public class SumaUno {

    public static void main(String[] args) {
        Scanner entradaTeclado = new Scanner(System.in);
        int numero;
        int resultado;
        boolean salir = false;

        do {
            System.out.println("Introduce un numero mayor que uno");
            numero = entradaTeclado.nextInt();

            if (numero <= 1) {
                System.out.println("EROR!!! El numero debe ser mayor que uno");
            }
            if (numero >= 1) {
                salir = true;
            }

        } while (!salir);

        resultado = numero + 1;

        System.out.println("La suma de " + numero + " + 1 es: " + resultado);

    }
}



