package SinInterfaces;

public class Empleado {

    String nombreEmpleado;
    int edad;
    double salario;
    boolean baja;

    public Empleado(){}

    public Empleado(String nombreEmpleado, int edad, double salario, boolean baja) {
        this.nombreEmpleado = nombreEmpleado;
        this.edad = edad;
        this.salario = salario;
        this.baja = baja;
    }

    @Override
    public String toString() {
        return "Empleado{" +
                "nombreEmpleado='" + nombreEmpleado + '\'' +
                ", edad=" + edad +
                ", salario=" + salario +
                ", baja=" + baja +
                '}';
    }
}
