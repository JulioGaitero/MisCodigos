package C1FundamentosProgramacion.M03TiposPrimitivos;

import java.util.Scanner;

public class E1TiendaLibros {

    public static void main(String[] args) {
        String nombreLibro = "";
        int id = 0;
        double precio = 0.0;
        boolean envioGratuito = false;
        Scanner entradaTeclado = new Scanner(System.in);


        System.out.println("Proporciona el nombre del libro:");
        nombreLibro = entradaTeclado.nextLine();
        System.out.println("Proporciona el id del libro:");
        id = entradaTeclado.nextInt();
        System.out.println("Proporciona el precio del libro:");
        precio = entradaTeclado.nextDouble();
        System.out.println("Proporciona el envio gratuito:");
        envioGratuito = entradaTeclado.nextBoolean();


        System.out.println("El nombre del libro es: " + nombreLibro);
        System.out.println("El id del libro es: " + id);
        System.out.println("El precio del libro es: " + precio);
        System.out.println("El envio gratuito es: " + envioGratuito);

    }

}
