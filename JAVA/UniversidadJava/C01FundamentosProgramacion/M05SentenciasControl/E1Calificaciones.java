package C1FundamentosProgramacion.M05SentenciasControl;

import java.util.Scanner;

public class E1Calificaciones {

    public static void main(String[] args) {

        Scanner entradaTeclado = new Scanner(System.in);
        System.out.println("Proporciona un valor entre 0 y 10");
        double nota = entradaTeclado.nextInt();

        if (nota >= 9 && nota <= 10) {
            System.out.println("A");
        } else if (nota >= 8 && nota < 9) {
            System.out.println("B");
        } else if (nota >= 7 && nota < 8) {
            System.out.println("C");
        } else if (nota >= 6 && nota < 7) {
            System.out.println("D");
        } else {
            System.out.println("F");
        }

    }

}
