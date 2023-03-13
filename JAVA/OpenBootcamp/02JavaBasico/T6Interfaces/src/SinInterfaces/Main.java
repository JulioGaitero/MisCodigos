package SinInterfaces;

import java.util.List;

public class Main {
    public static void main(String[] args) {

        EmpleadoCRUD Crud = new EmpleadoCRUD();

        Empleado NereaArzua = new Empleado("Nerea",35,1.550,false);
        Empleado JulioGaitero = new Empleado("Julio",35,1.550,false);
        Empleado AndresDuarte = new Empleado("Andres",35,1.550,false);

        System.out.println(NereaArzua);

        Crud.guardarEmpleado(NereaArzua);
        Crud.guardarEmpleado(JulioGaitero);
        Crud.guardarEmpleado(AndresDuarte);

        List<Empleado> empleadoList =  Crud.verEmpleados();
        System.out.println(empleadoList);



    }
}