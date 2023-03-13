package ConInterfaces;

import java.util.List;

public interface EmpleadoCRUD {
    void GuardarEmpleado(Empleado empleado);
    List<Empleado> VerEmpleados();
    void BorrarEmpleado(Empleado empleado);

}
