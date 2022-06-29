package BateriaEjercicos.MesEnum;

import java.util.Scanner;

public class ImprimirMeses {

    public static void main(String[] args) {
        Scanner entradaTeclado = new Scanner(System.in);

        DiasMeses[] arrayMeses = DiasMeses.values();

        System.out.println("Escribe un numero de dias");
        int dias = entradaTeclado.nextInt();

        for (int i = 0; i < arrayMeses.length; i++) {

            if (arrayMeses[i].getDias() == dias) {
                System.out.println(arrayMeses[i].toString());
            }
        }
    }
}
