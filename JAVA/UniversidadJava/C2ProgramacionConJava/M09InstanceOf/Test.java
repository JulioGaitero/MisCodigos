package C2ProgramacionConJava.M09InstanceOf;

public class Test {
    public static void main(String[] args) {
        Empleado empleado = new Empleado("Juan", 1000);
        imprimirTipo(empleado);
        Gerente gerente = new Gerente("Carla", 1000, "Gerencia");
        imprimirTipo(gerente);
    }

    public static void imprimirTipo(Empleado empleado) {
        if (empleado instanceof Gerente) {
            System.out.println("Es de tipo Gerente");
            Gerente gerente = (Gerente) empleado;
            System.out.println(gerente.getDepartamento());
        } else if (empleado instanceof Empleado) {
            System.out.println("Es de tipo Empleado");
        } else if (empleado instanceof Object) {
            System.out.println("Es de tipo Object");
        }
    }
}
