package C1FundamentosProgramacion.M23LaboratorioFinal.mundopc;

public class Teclado extends DispositivoEntrada {

    private final int idTeclado;
    private static int contadorTeclado = 0;

    public Teclado(String tipoEntrada, String marca) {
        super(tipoEntrada, marca);
        this.idTeclado = ++contadorTeclado;
    }

    @Override
    public String toString() {
        return "Teclado{" +
                "idTeclado=" + idTeclado +
                '}';
    }
}
