package C1FundamentosProgramacion.M02VariablesJAVA;

import java.util.Scanner;

public class C7ClaseScanner {

    public static void main(String[] args) {

        Scanner entradaTeclado = new Scanner(System.in);
        String usuario = "Adrian";
        System.out.println("El nombre del usuario es: " + usuario);

        System.out.println("Introduce el nombre del usuario:");
        usuario = entradaTeclado.nextLine();
        System.out.println("El nuevo nombre del usuario es: " + usuario);

    }

}
