package C1FundamentosProgramacion.M04OperadoresJava;

import java.util.Scanner;

public class E2NumeroMayor {

    public static void main(String[] args) {

        int numeroUno;
        int numeroDos;
        Scanner entradaTeclado = new Scanner(System.in);

        System.out.println("Proporciona el primer numero:");
        numeroUno = entradaTeclado.nextInt();
        System.out.println("Proporciona el segundo numero:");
        numeroDos = entradaTeclado.nextInt();

        if (numeroUno > numeroDos) {
            System.out.println(numeroUno + " es mayor que " + numeroDos);
        }else {
            System.out.println(numeroDos + " es mayor que " + numeroUno);
        }

    }

}
