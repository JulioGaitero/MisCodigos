/* Muestra por consola la suma, resta, multiplicación, división y módulo (resto de la división). */

package BateriaEjercicos;

public class OperacionVariables {
    public static void main(String[]args){
        int numero1 = 12;
        int numero2 = 9;

        System.out.println("Operaciones entre variables: \n");
        System.out.println("La suma de los numeros " + numero1 + " y " + numero2 + " es: " + (numero1 + numero2));
        System.out.println("La resta de los numeros " + numero1 + " y " + numero2 + " es: " + (numero1 - numero2));
        System.out.println("La multiplicacion de los numeros " + numero1 + " y " + numero2 + " es: " + (numero1 * numero2));
        System.out.println("La division de los numeros " + numero1 + " y " + numero2 + " es: " + (numero1 / numero2));
        System.out.println("El rest de los numeros " + numero1 + " y " + numero2 + " es: " + (numero1 % numero2) + " \n");
    }
}
