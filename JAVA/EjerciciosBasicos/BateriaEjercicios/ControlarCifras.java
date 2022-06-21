/*Pide por teclado un número entero positivo (debemos controlarlo) y muestra  el número de cifras que tiene.
Por ejemplo: si introducimos 1250, nos muestre que tiene 4 cifras. Tendremos que controlar si tiene una o mas cifras,
al mostrar el mensaje.   */

package BateriaEjercicos;

import java.util.Scanner;

public class ControlarCifras {

    public static void main(String[] args) {

        Scanner entradaTeclado = new Scanner(System.in);

        int numeroIntroducido = 0;

        int digitos = 0;

        do {
            System.out.println("Introduce un numero");
            numeroIntroducido = entradaTeclado.nextInt();
        } while (numeroIntroducido < 0);

        for (int i = numeroIntroducido; i > 0; i /= 10) {
            digitos++;
        }
            System.out.println("El numero de digitos de " + numeroIntroducido +" es " + digitos);

    }
}
