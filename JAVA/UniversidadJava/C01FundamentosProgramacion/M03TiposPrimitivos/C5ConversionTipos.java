package C1FundamentosProgramacion.M03TiposPrimitivos;

import java.util.Scanner;

public class C5ConversionTipos {

    public static void main(String[] args) {

        String edad = "10";
        int edadInt = Integer.parseInt(edad);

        System.out.println(edadInt);

        String pi ="3.1416";
        double piDouble = Double.parseDouble(pi);
        System.out.println(piDouble);

        System.out.println("Introduce un valor entero");

        int consola = new Scanner(System.in).nextInt();
        System.out.println(consola);

        String valorConsola = String.valueOf(consola);
        System.out.println(valorConsola);

        char caracter = "Hola hola".charAt(3);
        System.out.println(caracter);




    }

}
