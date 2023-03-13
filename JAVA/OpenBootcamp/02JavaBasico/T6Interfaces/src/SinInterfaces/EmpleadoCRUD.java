package SinInterfaces;

import java.util.ArrayList;
import java.util.List;

public class EmpleadoCRUD {

   private List<Empleado> empleadoList = new ArrayList<>();
public void guardarEmpleado(Empleado empleado){

    empleadoList.add(empleado);

}
public List<Empleado> verEmpleados(){
    return empleadoList;
}

}
