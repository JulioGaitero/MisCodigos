package C2ProgramacionConJava.M09InstanceOf;

public class Gerente extends Empleado {
    private String departamento;

    public Gerente(String nombre, double sueldo, String departamento) {
        super(nombre, sueldo);
        this.departamento = departamento;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    @Override
    public String detallesEmpleado() {
        return super.detallesEmpleado() + " Departamento: " + this.departamento;
    }


}
