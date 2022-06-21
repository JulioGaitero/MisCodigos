/* Pide por teclado dos número y genera 10 números aleatorios entre esos números. Usa el método Math.random para generar
 un número entero aleatorio
 */

package BateriaEjercicos;

import java.util.Scanner;

public class NumeroAleatorio {
    public static void main(String[] args) {
        int numero1;
        int numero2;
        int aleatorio;
        Scanner entradaTeclado = new Scanner(System.in);

        System.out.println("Escoge el primer valor");
        numero1 = entradaTeclado.nextInt();

        System.out.println("Escoge el segundo valor");
        numero2 = entradaTeclado.nextInt();

        for (int i = 0; i < 10; i++) {
            aleatorio = (int) Math.floor((Math.random() * (numero1 - numero2 + 1)) + numero2);
            System.out.println(aleatorio);
        }
    }
}
