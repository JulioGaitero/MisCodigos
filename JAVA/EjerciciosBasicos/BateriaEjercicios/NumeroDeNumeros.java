// Crear una aplicación que nos permite insertar números hasta que insertemos un -1. Calcular el numero de números introducidos.

package BateriaEjercicos;

import java.util.Scanner;

public class NumeroDeNumeros {

    public static void main(String args[]) {

        Scanner entradaTeclado = new Scanner(System.in);

        int numero;
        int contador = 0;

        do {
            System.out.println("Introduce un numero");
            System.out.println("Si quieres salir introduce -1");
            numero = entradaTeclado.nextInt();

            contador++;
        } while (numero != -1);

        System.out.println("Has introducido " + contador + " numeros");

    }

}
