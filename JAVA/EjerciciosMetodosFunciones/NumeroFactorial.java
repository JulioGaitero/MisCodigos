/* Crea una aplicación que nos calcule el factorial de un número pedido por teclado, lo realizara mediante un método al
 que le pasamos el número como parámetro. Para calcular el factorial, se multiplica los números anteriores hasta llegar
  a uno. Por ejemplo, si introducimos un 5, realizara esta operación 5*4*3*2*1=120. */

import java.util.Scanner;

public class NumeroFactorial {

    public static void main(String[] args) {

        Scanner entradaTeclado = new Scanner(System.in);
        int numero = 0;

        System.out.println("Introduce un numero, vamos calcular su factorial.");

        numero = entradaTeclado.nextInt();

        System.out.println("El factorial de " + numero + " es: " + calcularFactorial(numero));

    }

    public static int calcularFactorial(int numero) {

        int factorial = 1;

        for (int i = numero; i > 1; i--) {

            factorial = factorial * i;

        }

        return factorial;

    }

}
