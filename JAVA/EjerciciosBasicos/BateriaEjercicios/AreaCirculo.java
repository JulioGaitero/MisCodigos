/* Haz una aplicación que calcule el área de un círculo(pi*R2). El radio se pedirá por teclado. Usa la
constante PI y el método pow de Math.*/

package BateriaEjercicos;

import java.util.Scanner;

public class AreaCirculo {
    public static void main(String[] args){

        Scanner entradaTeclado = new Scanner(System.in);
        double radio;
        double resultado;
        System.out.println("Calculo del area :");
        System.out.println("Introduce el tamaño del radio :");
        radio = entradaTeclado.nextDouble();
        resultado = Math.PI*Math.pow(radio,2);
        System.out.println("El area de un circulo con radio: " +radio + " es: " + resultado);
    }
}
