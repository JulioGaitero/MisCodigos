/* Lee un número por teclado y muestra por consola, el carácter al que pertenece en la tabla ASCII. Por ejemplo: si
introduzco un 97, me muestre una a.  */
package BateriaEjercicos;

import java.util.Scanner;

public class CodigoASCII {
    public static void main(String[] args){
        Scanner entradaTeclado = new Scanner(System.in);
        int numero;
        char caracter;

        System.out.println("Introduce el valor numerico de un codigo ASCII ");
        numero = entradaTeclado.nextInt();
        caracter = (char) numero;
        System.out.println("El caracter ASCII de:" +numero+ " es: " +caracter);
    }
}
