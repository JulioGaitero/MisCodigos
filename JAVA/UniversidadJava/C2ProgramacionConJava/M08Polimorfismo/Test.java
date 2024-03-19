package C2ProgramacionConJava.M08Polimorfismo;

public class Test {
    public static void main(String[] args) {
        Empleado empleado = new Empleado("Juan", 1000);
        System.out.println("Empleado: " + empleado.detallesEmpleado());
        imprimir(empleado);
        System.out.println(" ");
        Gerente gerente = new Gerente("Carla", 1000, "Gerencia");
        System.out.println("Gerente: " + gerente.detallesEmpleado());
        imprimir(gerente);

    }

    public static void imprimir(Empleado empleado) {
        System.out.println("Metodo Imprimir: " + empleado.detallesEmpleado());
    }
}
