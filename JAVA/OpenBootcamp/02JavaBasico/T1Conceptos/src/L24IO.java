import java.util.Scanner;

public class L24IO {
    public static void main(String[] args) {
        System.out.println("Salida por pantalla una nueva linea");
        Scanner entrada = new Scanner(System.in);
        System.out.println("Introduce un texto");
        String nombre = entrada.nextLine();
        System.out.println(nombre);
        System.out.println("Introduce un numero");
        int numero = entrada.nextInt();
        System.out.println(numero);

    }
}
