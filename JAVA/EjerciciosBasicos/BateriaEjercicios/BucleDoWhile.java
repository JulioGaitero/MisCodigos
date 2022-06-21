/* Lee un número por teclado y comprueba que este numero es mayor o igual que cero, si no lo es lo volverá a pedir
(do while), después muestra ese número por consola.*/

package BateriaEjercicos;

import java.util.Scanner;

public class BucleDoWhile {

    public static void main(String[] args) {

        int numero;
        Scanner entradaTeclado = new Scanner(System.in);

        do {
            System.out.println("Introduce un numero igual o superior a 0");
            numero = entradaTeclado.nextInt();
        } while (numero < 0);

        System.out.println("El numero introducido es: " + numero);
    }
}
