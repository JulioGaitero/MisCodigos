/*  Crea un aplicación que nos convierta una cantidad de euros introducida por teclado a otra moneda.
El cambio de divisas son:

    0.86 libras es un 1 €
    1.28611 $ es un 1 €
    129.852 yenes es un 1 €

*/

import java.util.Objects;
import java.util.Scanner;

public class cambioDivisas {

    public static void main(String[] args) {

        Scanner entradaTeclado = new Scanner(System.in);
        double valorMonedas;
        String tipoMoneda;

        System.out.println("Introduce la cantidad que quieres convertir");
        valorMonedas = entradaTeclado.nextDouble();

        System.out.println("Introduce la moneda");
        tipoMoneda = entradaTeclado.next();

        if (Objects.equals(tipoMoneda, "libras") | Objects.equals(tipoMoneda, "dolares") | Objects.equals(tipoMoneda, "yenes")) {

            System.out.println("El cambio de " + valorMonedas + " euros a " + tipoMoneda + " es " + cambioMoneda(valorMonedas, tipoMoneda));

        }else {
            System.out.println("Moneda no valida");
        }
    }

    public static double cambioMoneda(double valorMonedas, String tipoMoneda) {

        double cambio = 0;

            switch (tipoMoneda) {
                case "libras":
                    cambio = valorMonedas * 0.86;
                    break;

                case "dolares":
                    cambio = valorMonedas * 1.28611;
                    break;

                case "yenes":
                    cambio = valorMonedas * 129.852;
                    break;

                default:
                    System.out.println("Valor de moneda no valido");

            }

            return cambio;

    }

}
