package C1FundamentosProgramacion.M23LaboratorioFinal.mundopc;

public class Raton extends DispositivoEntrada {

    private final int idRaton;
    private static int contadorRaton = 0;

      public Raton(String tipoEntrada, String marca) {
        super(tipoEntrada, marca);
        this.idRaton = ++contadorRaton;
    }

    @Override
    public String toString() {
        return "Raton{" +
                "idRaton=" + idRaton +
                '}' + super.toString();
    }
}
