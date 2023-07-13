package C1FundamentosProgramacion.M22DisenioClases;

public class Orden {

    private int idOrden;
    private static int contadorOrden;
    private Producto productos[];
    private int contadorProcutos;
    private static final int maxProductos = 10;

    public Orden() {
        this.idOrden = ++Orden.contadorOrden;
        this.productos = new Producto[Orden.maxProductos];
    }

    public void agregarProcuto(Producto producto) {
        if (this.contadorProcutos < Orden.maxProductos) {
            this.productos[contadorProcutos] = producto;
            this.contadorProcutos++;
        } else {
            System.out.println("No se puede agregar mas productos: " + Orden.maxProductos);
        }
    }

    public double calcularTotal() {
        double total = 0;
        for (int i = 0; i < contadorProcutos; i++) {
            total += this.productos[i].getPrecio();
        }
        return total;
    }

    public void mostrarOrden() {

        System.out.println("Orden: " + this.idOrden);

        System.out.println("Productos: ");

        for (int i = 0; i < contadorProcutos; i++) {
            System.out.println(this.productos[i]);
        }

        System.out.println("Total: " + this.calcularTotal());


    }
}
