package C1FundamentosProgramacion.M4OperadoresJava;

import java.util.Scanner;

public class E1Rectangulo {

    public static void main(String[] args) {

        int alto;
        int ancho;
        Scanner entradaTeclado = new Scanner(System.in);

        System.out.println("Proporciona el alto del rectangulo:");
        alto = entradaTeclado.nextInt();
        System.out.println("Proporciona el ancho del rectangulo:");
        ancho = entradaTeclado.nextInt();

        System.out.println("El area del rectangulo es: " + (alto * ancho));


    }

}
