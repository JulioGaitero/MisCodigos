/* Lee un número por teclado que pida el precio de un producto (puede tener decimales) y calcule el precio final con IVA.
   El IVA sera una constante que sera del 21%.*/

package BateriaEjercicos;

import java.util.Scanner;

public class IVA {
    public static void main(String[] args){
        Double precio;
        Double precioFinal;
        final int IVA = 21;
        Scanner entradaTeclado = new Scanner(System.in);

        System.out.println("Introduce el valor del producto");
        precio = entradaTeclado.nextDouble();

        precioFinal = precio+((precio*21)/100);
        System.out.println("El precio final del producto con IVA es: " +precioFinal);

    }
}
