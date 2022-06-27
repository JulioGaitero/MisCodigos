package BateriaEjercicos;

import java.util.Scanner;

public class Calculadora {

    public static void main(String[] args){

        Scanner entradaTeclado = new Scanner(System.in);

        double numero1;
        double numero2;
        double resultado = 0;
        String operacion;

        System.out.println("#########################");
        System.out.println("Operaciones:");
        System.out.println("+ Para sumar");
        System.out.println("- Para restar");
        System.out.println("* Para multiplicar");
        System.out.println("/ Para Dividir");
        System.out.println("^ Para elevar a la potencia");
        System.out.println("% Para calcular el resto");
        System.out.println("#########################");

        System.out.println("Escribe el primer numero");

        numero1 = entradaTeclado.nextDouble();

        System.out.println("Escribe el segundo numero");

        numero2 = entradaTeclado.nextDouble();

        System.out.println("Introduce la operacion que quieres realizar");

        operacion = entradaTeclado.next();

        switch (operacion){
            case "+":
                resultado=numero1+numero2;
                break;
            case "-":
                resultado=numero1-numero2;
                break;
            case "*":
                resultado=numero1*numero2;
                break;
            case "/":
                resultado=numero1/numero2;
                break;
            case "^":
                resultado=(int)Math.pow(numero1, numero2);
                break;
            case "%":
                resultado=numero1%numero2;
                break;
            default:
                System.out.println("Operando no valido.");
        }
        System.out.println("Su operacion");
        System.out.println(numero1+operacion+numero2 + "="+resultado );

    }

}
