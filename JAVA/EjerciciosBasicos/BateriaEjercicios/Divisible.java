// Lee un número por teclado e indica si es divisible entre 2 (resto = 0). Si no lo es, también debemos indicarlo.

package BateriaEjercicos;

import java.util.Scanner;

public class Divisible {
    public static void main(String[] args){
        Scanner entradaTeclado = new Scanner(System.in);
        int numero;

        System.out.println("Introduce un numero");
        numero = entradaTeclado.nextInt();

        if(numero%2 == 0){
            System.out.println("El numero introducido es divisible entre 2");
        }else{
            System.out.println("El numero introducido no es divisible entre 2");
        }



    }
}
