/*Escribe una aplicación con un String que contenga una contraseña cualquiera. Después se te pedirá que introduzcas la
contraseña, con 3 intentos. Cuando aciertes ya no pedirá mas la contraseña y mostrara un mensaje diciendo «Enhorabuena».
 Piensa bien en la condición de salida (3 intentos y si acierta sale, aunque le queden intentos).
 */

package BateriaEjercicos;

import java.util.Scanner;

public class Password {

    public static void main(String[] args) {
        String password = "1234";
        String passwordIntroducido;
        Scanner entradaTeclado = new Scanner(System.in);
        Boolean intentos = true;
        int numeroIntentos = 3;
        System.out.println("Hola bienvenido !!!");

        while (intentos) {
            System.out.println("Introduce la contraseña");
            passwordIntroducido = entradaTeclado.next();
            if (numeroIntentos == 1) {
                intentos = false;
                System.out.println("Has agotado el numero de intentos !!! :(");
            } else if (passwordIntroducido.equals(password)) {
                System.out.println("Bienvenido al sistema !!!");
                intentos = false;
            } else {

                numeroIntentos--;
                System.out.println("Nº de intentos : " +numeroIntentos);
            }
        }

    }
}
