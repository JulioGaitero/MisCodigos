/* Crea una aplicación que nos convierta un número en base decimal a binario. Esto lo realizara un método al que le
pasaremos el numero como parámetro, devolverá un String con el numero convertido a binario. Para convertir un numero
decimal a binario, debemos dividir entre 2 el numero y el resultado de esa división se divide entre 2 de nuevo hasta
que no se pueda dividir mas, el resto que obtengamos de cada división formara el numero binario, de abajo a arriba.
 */

import java.util.Scanner;

public class NumeroBinario {

    public static void main(String[] args) {

        Scanner entradaTeclado = new Scanner(System.in);
        int numeroDecimal;

        System.out.println("Introduce un numero, lo vamos a convertir a base binaria.");

        numeroDecimal = entradaTeclado.nextInt();

        System.out.println("El numero " + numeroDecimal+ " en binario es: " +convertirBinario(numeroDecimal));

    }

    public static String convertirBinario(int numeroDecimal) {
        String numeroConvertido = "";
        String digito;

        for (int i = numeroDecimal; i > 0; i /= 2) {
            if (i % 2 == 1) {
                digito = "1";
            } else {
                digito = "0";
            }

            numeroConvertido = numeroConvertido + digito;
        }

        return numeroConvertido;
    }

}
