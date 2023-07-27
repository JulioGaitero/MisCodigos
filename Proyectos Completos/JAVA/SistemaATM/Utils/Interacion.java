package Utils;

import java.util.Scanner;

public class Interacion {
    static public void pulsaContinuar() {
        String seguir;
        Scanner teclado = new Scanner(System.in);
        System.out.println("\nPresiona un tecla para continuar");
        try {
            seguir = teclado.nextLine();
        } catch (Exception e) {}
    }
}
