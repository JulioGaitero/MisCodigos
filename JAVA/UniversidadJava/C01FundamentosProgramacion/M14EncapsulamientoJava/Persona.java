package C1FundamentosProgramacion.M14EncapsulamientoJava;

public class Persona {

    private String nombre;
    private String apellido;
    private Double sueldo;
    private boolean eliminado;

    public Persona() {

    }

    public Persona(String nombre, String apellido, Double sueldo, boolean eliminado) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.sueldo = sueldo;
        this.eliminado = eliminado;

    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public Double getSueldo() {
        return sueldo;
    }

    public void setSueldo(Double sueldo) {
        this.sueldo = sueldo;
    }

    public boolean isEliminado() {
        return eliminado;
    }

    public void setEliminado(boolean eliminado) {
        this.eliminado = eliminado;
    }

    @Override
    public String toString() {
        return "Persona{" +
                "nombre='" + nombre + '\'' +
                ", apellido='" + apellido + '\'' +
                ", sueldo=" + sueldo +
                ", eliminado=" + eliminado +
                '}';
    }
}
