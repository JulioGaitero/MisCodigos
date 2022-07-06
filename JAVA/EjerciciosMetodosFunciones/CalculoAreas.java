/* Crea una aplicación que nos calcule el área de un circulo, cuadrado o triangulo. Pediremos que figura queremos
calcular su área y según lo introducido pedirá los valores necesarios para calcular el área. Crea un método por
cada figura para calcular cada área, este devolverá un número real. Muestra el resultado por pantalla.

Aquí te mostramos que necesita cada figura:

    Circulo: (radio^2)*PI
    Triangulo: (base * altura) / 2
    Cuadrado: lado * lado

*/

import java.util.Scanner;

public class CalculoAreas {

    public static void main(String[] args) {

        Scanner entradaTeclado = new Scanner(System.in);
        String figuraGeometrica;
        double resultado;

        System.out.println("Introduce la figura deseada. (Circulo, triangulo o cuadrado)");
        figuraGeometrica = entradaTeclado.nextLine();

        switch (figuraGeometrica) {
            case "circulo":
            case "Circulo":
                System.out.println("Introduce la longitud del radio");
                double radio = entradaTeclado.nextDouble();
                resultado = calcularCirculo(radio);
                System.out.println("El area del circulo es: " + resultado);
                break;

            case "triangulo":
            case "Triangulo":
                System.out.println("Introduce la longitud de la base");
                double base = entradaTeclado.nextDouble();
                System.out.println("Introduce la longitud de la altura");
                double altura = entradaTeclado.nextDouble();
                resultado = calcularTriangulo(base, altura);
                System.out.println("El area del triangulo es: " + resultado);
                break;

            case "cuadrado":
            case "Cuadrado":
                System.out.println("Introduce la longitud del lado");
                double lado = entradaTeclado.nextDouble();
                resultado = calcularCuadrado(lado);
                System.out.println("El area del cuadrado es: " + resultado);
                break;

            default:
                System.out.println("Opcion no valida");

        }

    }

    public static double calcularCirculo(double radio) {

        return Math.pow(radio, 2) * Math.PI;

    }

    public static double calcularTriangulo(double base, double altura) {

        return base * altura / 2;

    }

    public static double calcularCuadrado(double lado) {
        return lado * lado;
    }

}
