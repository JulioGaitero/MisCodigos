package C1FundamentosProgramacion.M5SentenciasControl;

import java.util.Scanner;

public class C3IfElseEjercioDos {

    public static void main(String[] args) {

        Scanner entradaTeclado = new Scanner(System.in);
        String estacion;

        System.out.println("Introduce el mes:");
        int mes = entradaTeclado.nextInt();

        if (mes == 1 | mes == 2 | mes == 12) {
            estacion = "Invierno";
        } else if (mes == 3 | mes == 4 | mes == 5) {
            estacion = "Primavera";
        } else if (mes == 6 | mes == 7 | mes == 8) {
            estacion = "Verano";
        } else if (mes == 9 | mes == 10 | mes == 11) {
            estacion = "Otoño";
        } else {
            estacion = "Estacion desconocida";
        }

        System.out.println("La estacion es: " + estacion);

    }

}
