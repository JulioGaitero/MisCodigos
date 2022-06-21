/*Modifica el ejercicio anterior, para que en lugar de pedir un número, pida un carácter (char)
y muestre su código en la tabla ASCII. */
package BateriaEjercicos;

import java.util.Scanner;

public class CodigoASCII2 {
    public static void main(String[] args) {
        int numero;
        char caracter;
        Scanner entradaTeclado = new Scanner(System.in);
        System.out.println("Introduce un caracter");
        caracter = entradaTeclado.next().charAt(0);
        numero = (int) caracter;
        System.out.println("El codigo ASCII de: " +numero+ " es: " +caracter);

    }
}
