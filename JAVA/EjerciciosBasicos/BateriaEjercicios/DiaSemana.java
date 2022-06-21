/* Crea una aplicación que nos pida un día de la semana y que nos diga si es un dia laboral o no.
Usa un switch para ello. */
package BateriaEjercicos;

import java.util.Scanner;

public class DiaSemana {

    public static void main(String[] args){
        String diaSemana;
        Scanner entradaTeclado = new Scanner(System.in);

        System.out.println("Introduce el dia de la semana");
        diaSemana=entradaTeclado.next();
        switch(diaSemana){

            case "lunes":
            case "martes":
            case "miercoles":
            case "jueves":
            case "viernes":
            case "Lunes":
            case "Martes":
            case "Miercoles":
            case "Jueves":
            case "Viernes":
                System.out.println("El " +diaSemana +" es dia laboral");
                break;
            case "sabado":
            case "domingo":
            case "Sabado":
            case "Domingo":
                System.out.println("El " +diaSemana +" es dia festivo. A descansar :)");
                break;
            default:
                System.out.println("Dia de la semana no reconocido");
        }
    }



}

