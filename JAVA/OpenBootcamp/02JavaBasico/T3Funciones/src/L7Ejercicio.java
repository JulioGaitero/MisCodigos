public class L7Ejercicio {
    public static void main(String[] args) {
        double precioProducto = 1250;
        double porcentajeIva = 21;
        double resultado;

        resultado = devuelveIva(precioProducto, porcentajeIva);
        System.out.println("El precio del producto es: " + precioProducto
                + " El impuesto del IVA esta al: " + porcentajeIva + "%"
                + " Total a pagar: " + (resultado + precioProducto)
                + " Siendo el precio del IVA: " + resultado);

    }

    public static double devuelveIva(double precio, double iva) {
        return (precio * iva) / 100;
    }
}
