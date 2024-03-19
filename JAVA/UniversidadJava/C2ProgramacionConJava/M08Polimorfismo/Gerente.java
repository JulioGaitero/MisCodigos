package C2ProgramacionConJava.M08Polimorfismo;

public class Gerente extends Empleado {
    private String departamento;

    public Gerente(String nombre, double sueldo, String departamento) {
        super(nombre, sueldo);
        this.departamento = departamento;
    }

    @Override
    public String detallesEmpleado() {
        return super.detallesEmpleado() + " Departamento: " + this.departamento;
    }


}
