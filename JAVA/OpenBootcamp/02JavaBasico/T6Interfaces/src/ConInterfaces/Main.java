package ConInterfaces;

public class Main {

    static EmpleadoCRUD empleadoCRUD = new EmpleadoExcel();
    public static void main(String[] args) {

        empleadoCRUD.VerEmpleados();
        empleadoCRUD.GuardarEmpleado(new Empleado());

    }
}
