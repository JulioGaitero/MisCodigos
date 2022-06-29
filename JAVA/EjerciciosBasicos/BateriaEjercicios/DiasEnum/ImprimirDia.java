//Crea un enum con los días de la semana, pide un día de la semana e indica si es laboral o no (en el main)

package BateriaEjercicos.DiasEnum;

import java.util.Scanner;

public class ImprimirDia {

    public static void main(String[] args) {

        Scanner entradaTeclado = new Scanner(System.in);
        System.out.println("Escribe un dia de la semana");
        String dia = entradaTeclado.next();

        DiasSemana diaEscrito = DiasSemana.valueOf(dia.toUpperCase());

        switch(diaEscrito){
            case LUNES:
            case MARTES:
            case MIERCOLES:
            case JUEVES:
            case VIERNES:
                System.out.println("El dia "+diaEscrito.name().toLowerCase()+" es laborable");
                break;
            case SABADO:
            case DOMINGO:
                System.out.println("El dia "+diaEscrito.name().toLowerCase()+" no es laborable");
                break;

        }

    }

}
