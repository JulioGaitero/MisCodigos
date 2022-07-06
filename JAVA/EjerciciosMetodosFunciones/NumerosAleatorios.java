/* Crea una aplicación que nos genere una cantidad de números enteros aleatorios que nosotros le pasaremos por teclado.
Crea un método donde pasamos como parámetros entre que números queremos que los genere, podemos pedirlas por teclado
antes de generar los números. Este método devolverá un número entero aleatorio. Muestra estos números por pantalla. */

import java.util.Scanner;

public class NumerosAleatorios {

    public static void main(String[] args) {

        int cantidadNumeros;
        int numeroMinimo;
        int numeroMaximo;
        Scanner entradaTeclado = new Scanner(System.in);

        System.out.println("Introduce el número, de números aleatorios que quieres generar. ");

        cantidadNumeros = entradaTeclado.nextInt();

        System.out.println("Introduce el valor minimo");

        numeroMinimo = entradaTeclado.nextInt();

        System.out.println("Introduce el valor maximo");

        numeroMaximo = entradaTeclado.nextInt();

        System.out.println("#########################");
        System.out.println(" ");

        for (int i = 0; i < cantidadNumeros; i++) {

            System.out.println(generadorAleatorios(numeroMinimo, numeroMaximo));

        }

    }

    public static int generadorAleatorios(int numeroMinimo, int numeroMaximo) {

        return (int) (Math.floor(Math.random() * (numeroMaximo - numeroMinimo)) + numeroMinimo);
    }

}
