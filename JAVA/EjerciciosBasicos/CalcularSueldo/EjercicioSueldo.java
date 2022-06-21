/* Un trabajador necesita saber cuanto gana, suponiendo que se le paga por horas, gana se acuerdo a las horas trabajadas.

Utilice clases y métodos.*/

package CalcularSueldo;

import java.util.Scanner;

public class EjercicioSueldo {

    public static void main(String[] args) {

        int horas;

        double precioHora = 12.3;

        Scanner entradaTeclado = new Scanner(System.in);

        Calculadora trabajador = new Calculadora();

        System.out.println("Introduce el numero de horas.");

        horas = entradaTeclado.nextInt();

        System.out.print("El sueldo del trabajador es: " + trabajador.calculo(horas, precioHora) + " €");

    }

}
