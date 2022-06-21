// Indica cual es mayor de los dos. Si son iguales indicarlo también.

package BateriaEjercicos;

public class Comparaciones {
    public static void main(String[] args){
        int numero1 = 12;
        int numero2 = 9;

        System.out.println("Comparacion entre variables: \n");

        if (numero1 > numero2) {
            System.out.println("El numero 1 es mayor que numero 2.  \n");
        } else if (numero1 < numero2) {
            System.out.println("El numero 1 es menor que el numero 2. \n");
        } else {
            System.out.println("Los numeros son iguales.  \n");
        }
    }
}
