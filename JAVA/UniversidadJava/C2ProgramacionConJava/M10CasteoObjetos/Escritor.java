package C2ProgramacionConJava.M10CasteoObjetos;

public class Escritor extends Empleado {

    final TipoEscritura tipoEscritura;

    public Escritor(String nombre, double sueldo, TipoEscritura tipoEscritura) {
        super(nombre, sueldo);
        this.tipoEscritura = tipoEscritura;
    }

    public TipoEscritura getTipoEscritura() {
        return tipoEscritura;
    }

    @Override
    public String detallesEmpleado() {
        return super.detallesEmpleado() + " Escritura: " + tipoEscritura.getDescripcion();
    }

    @Override
    public String toString() {
        return "Escritor{" +
                "tipoEscritura=" + tipoEscritura +
                ", nombre='" + nombre + '\'' +
                ", sueldo=" + sueldo +
                '}';
    }
}
