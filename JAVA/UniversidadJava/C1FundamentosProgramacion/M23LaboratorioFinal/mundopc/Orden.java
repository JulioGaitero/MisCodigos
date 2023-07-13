package C1FundamentosProgramacion.M23LaboratorioFinal.mundopc;

public class Orden {

    private final int idOrden;
    private static int contadorOrden = 0;
    private Computadora computadora[];
    private static final int maxComputadora = 10;
    private int contadorComputadoras;

    public Orden() {
        this.idOrden = ++contadorOrden;
        this.computadora = new Computadora[Orden.maxComputadora];
    }

    public void agregarComputadora(Computadora computadora) {
        if (this.contadorComputadoras < Orden.maxComputadora) {
            this.computadora[this.contadorComputadoras] = computadora;
            this.contadorComputadoras++;
        } else {
            System.out.println("No se puede agregar mas computadoras");
        }
    }

    public void mostrarOrden() {
        System.out.println("Orden: " + this.idOrden);
        System.out.println("Computadoras: ");
        for (int i = 0; i < this.contadorComputadoras; i++) {
            System.out.println(this.computadora[i]);
        }
    }

}
