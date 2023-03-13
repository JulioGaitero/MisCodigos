import java.util.Scanner;

public class L1GestionarErrores {

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        System.out.println("Introduce dos numeros: ");

        int numero1 = scanner.nextInt();
        int numero2 = scanner.nextInt();

        try {
            int resultado = numero1 / numero2;
            System.out.println("El resultado es: " + resultado);
        } catch (ArithmeticException e) {
            System.out.println("Excepcion Aritmetica");
        } catch (Exception e) {
            System.out.println("Error no definido" + e.getClass());
        }finally {
            System.out.println("Se Acabo el programa");
        }

    }

}
