/* Primero se lee un numero, que es introducido por teclado y se hacen comparaciones para verificar si es negativo,
mayor a 100 o en el intervalo 0-100. Finalmente se despliega por pantalla la condición de dicho numero  */

import java.util.Scanner;

public class Comparador {

    public static void main(String[] args) {

        int numeroIntroducido;

        Scanner entradaTeclado = new Scanner(System.in);

        System.out.println("Introduce un numero entero");

        numeroIntroducido = entradaTeclado.nextInt();

        if (numeroIntroducido < 0) {

            System.out.println("El numero es inferior a 0");

        } else if (numeroIntroducido >= 0 && numeroIntroducido <= 100) {

            System.out.println("El numero introducido esta en el rango de 0 a 100");

        } else {

            System.out.println("El numero introducido es superior a 100");

        }

    }
}
