/* Crea una aplicación que nos pida un número por teclado y con un método se lo pasamos por parámetro para que nos
indique si es o no un número primo, debe devolver true si es primo sino false.

Un número primo es aquel solo puede dividirse entre 1 y si mismo. Por ejemplo: 25 no es primo, ya que 25 es divisible
entre 5, sin embargo, 17 si es primo.

Un buen truco para calcular la raíz cuadrada del numero e ir comprobando que si es divisible desde ese numero hasta 1.*/

import java.util.Scanner;

public class NumerosPrimos {

    public static void main(String[] args) {

        Scanner entradaTeclado = new Scanner(System.in);
        int numero;

        System.out.println("Introduce un numero, para calcular si es primo o no");

        numero = entradaTeclado.nextInt();

        if (comprobarPrimo(numero)) {
            System.out.println("El numero " + numero + " es primo.");
        } else {
            System.out.println("El numero " + numero + " no es primo.");
        }

    }

    public static boolean comprobarPrimo(int numero) {
        if (numero <= 1) {
            return false;
        }

        int contador = 0;

        for (int divisor = (int) Math.sqrt(numero); divisor > 1; divisor--) {
            //contabilizados los divisibles"
            if (numero % divisor == 0) {
                contador += 1;
            }
        }

        if (contador >= 1) {
            return false;
        } else {
            return true;
        }

    }

}
