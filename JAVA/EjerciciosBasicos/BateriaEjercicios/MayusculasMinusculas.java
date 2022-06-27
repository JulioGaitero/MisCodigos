/*  Convertir una frase a mayúsculas o minúsculas, que daremos opción a que el usuario lo pida y
mostraremos el resultado por pantalla.  */
package BateriaEjercicos;

import java.util.Scanner;

public class MayusculasMinusculas {

    public static void main(String[] args) {

        Scanner entradaTeclado = new Scanner(System.in);
        String frase;
        int opcion;

        System.out.println("Introduce una frase ");
        frase = entradaTeclado.nextLine();

        System.out.println("Pulsa 1 para convertirlo en mayusculas");
        System.out.println("Pulsa 2 para convertirlo en minusculas");
        opcion = entradaTeclado.nextInt();

            switch (opcion){

                case 1:
                    System.out.println(frase.toUpperCase());
                    break;

                case 2:
                    System.out.println(frase.toLowerCase());
                    break;
                default: System.out.println("Opcion incorrecta");
                    break;
            }

        }


    }

