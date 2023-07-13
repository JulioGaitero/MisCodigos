package C1FundamentosProgramacion.M23LaboratorioFinal.mundopc;

public class Computadora {

    private final int idComputadora;
    private String nombreComputadora;
    private Monitor monitor;
    private Teclado teclado;
    private Raton raton;
    private static int contadorComputadora = 0;

    Computadora() {
        this.idComputadora = ++contadorComputadora;
    }

    public Computadora(String nombreComputadora, Monitor monitor, Teclado teclado, Raton raton) {
        this();
        this.nombreComputadora = nombreComputadora;
        this.monitor = monitor;
        this.teclado = teclado;
        this.raton = raton;
    }

    public String getNombreComputadora() {
        return nombreComputadora;
    }

    public void setNombreComputadora(String nombreComputadora) {
        this.nombreComputadora = nombreComputadora;
    }

    public Monitor getMonitor() {
        return monitor;
    }

    public void setMonitor(Monitor monitor) {
        this.monitor = monitor;
    }

    public Teclado getTeclado() {
        return teclado;
    }

    public void setTeclado(Teclado teclado) {
        this.teclado = teclado;
    }

    public Raton getRaton() {
        return raton;
    }

    public void setRaton(Raton raton) {
        this.raton = raton;
    }

    public static int getContadorComputadora() {
        return contadorComputadora;
    }

    public static void setContadorComputadora(int contadorComputadora) {
        Computadora.contadorComputadora = contadorComputadora;
    }

    public int getIdComputadora() {
        return idComputadora;
    }

    @Override
    public String toString() {
        return "Computadora{" +
                "idComputadora=" + idComputadora +
                ", nombreComputadora='" + nombreComputadora + '\'' +
                ", monitor=" + monitor +
                ", teclado=" + teclado +
                ", raton=" + raton +
                '}';
    }
}
