package C1FundamentosProgramacion.M22DisenioClases;

public class VentasTest {

    public static void main(String[] args) {

        Producto producto = new Producto("Manzanas", 2.50);
        Producto producto2 = new Producto("Pera", 1.50);
        Producto producto3 = new Producto("Plátano", 3.50);
        Producto producto4 = new Producto("Naranja", 4.50);
        Producto producto5 = new Producto("Limon", 1.50);

        Orden orden1 = new Orden();
        orden1.agregarProcuto(producto);
        orden1.agregarProcuto(producto2);
        orden1.agregarProcuto(producto3);
        orden1.agregarProcuto(producto4);

        orden1.mostrarOrden();

        Orden orden2 = new Orden();
        orden2.agregarProcuto(producto);
        orden2.agregarProcuto(producto5);
        orden2.agregarProcuto(producto4);
        orden2.agregarProcuto(producto3);
        orden2.agregarProcuto(producto2);

        orden2.mostrarOrden();

    }

}
