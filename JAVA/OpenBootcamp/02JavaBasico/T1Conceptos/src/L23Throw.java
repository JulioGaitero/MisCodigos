import jdk.jshell.execution.StreamingExecutionControl;

import java.util.Scanner;

public class L23Throw {

    public static void main(String[] args) {
        try {
            leerNombre();
        } catch (L23ExcepcionNombre e) {
            e.printStackTrace();
        }

    }

    private static void leerNombre() throws L23ExcepcionNombre {
        Scanner entrada = new Scanner(System.in);
        System.out.println("Introduce un nombre");
        while (entrada.hasNext()) {
            System.out.println("Introduce un nombre");
            String nombre = entrada.nextLine();
            if (nombre.length() < 8) {
                entrada.close();
                throw new L23ExcepcionNombre("El nombre debe tener minimo 8 caracteres");
            }
        }
        entrada.close();
    }
}

