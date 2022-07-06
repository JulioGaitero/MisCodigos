/* Crea una aplicación que nos cuente el número de cifras de un número entero positivo (hay que controlarlo)
   pedido por teclado. Crea un método que realice esta acción, pasando el número por parámetro, devolverá el
   número de cifras. */

import java.util.Scanner;

public class ContadorCifras {

    public static void main(String[] args){

        Scanner entradaTeclado = new Scanner(System.in);
        int numero;

        do {
            System.out.println("Introduce un numero positivo, vamos a contar cuantas cifras tiene.");

            numero = entradaTeclado.nextInt();

        }while (numero<0);

        System.out.println("El numero de digitos del numero "+ numero+ " es " +contadorCifras(numero));

    }

    public static int contadorCifras(int numero){

        int digitos = 0;

        for (int i = numero; i > 0; i /= 10) {
            digitos++;
        }

        return digitos;

    }

}
