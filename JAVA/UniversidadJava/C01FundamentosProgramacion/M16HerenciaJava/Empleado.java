package C1FundamentosProgramacion.M16HerenciaJava;

public class Empleado extends Persona {

    private int idEmpleado;
    private double sueldo;
    private static int contadorEmpleado = 0;

    public Empleado() {
    }

    public Empleado(String nombre, String direccion, char genero, int edad, double sueldo) {
        super(nombre, direccion, genero, edad);
        this.sueldo = sueldo;
    }

    public Empleado(String nombre,double sueldo) {
        super(nombre);
        this.sueldo = sueldo;
        this.idEmpleado = ++Empleado.contadorEmpleado;
    }

    public double getSueldo() {
        return sueldo;
    }

    public void setSueldo(double sueldo) {
        this.sueldo = sueldo;
    }

    @Override
    public String toString() {
        return "Empleado{" +
                "idEmpleado=" + idEmpleado +
                ", sueldo=" + sueldo +
                '}' + "Persona{" +super.toString() +"}";
    }

}
