// Muestra los números primos entre 1 y 100.

package BateriaEjercicos;

public class NumerosPrimos {

    public static void main(String[] args) {

        for (int i = 1; i <= 100; i++) {

            int raizCuadrada = (int) Math.sqrt(i);
            int contador = 0;

            for (int j = raizCuadrada; j > 1; j--) {
                if (i % j == 0) {
                    contador++;
                }
            }

            if (contador < 1) {
                System.out.print(i + " ");
            }

        }

    }
}
