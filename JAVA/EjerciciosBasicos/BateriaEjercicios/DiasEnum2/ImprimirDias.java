package BateriaEjercicos.DiasEnum2;

import java.util.Scanner;

public class ImprimirDias {

    public static void main(String[] args){

        Scanner entradaTeclado = new Scanner(System.in);
        System.out.println("Escribe un dia de la semana");
        String dia = entradaTeclado.next();

        DiasSemana diaEnum = DiasSemana.valueOf(dia.toUpperCase());

        System.out.println(diaEnum.toString());

    }

}
