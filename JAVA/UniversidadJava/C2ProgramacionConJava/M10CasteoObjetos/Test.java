package C2ProgramacionConJava.M10CasteoObjetos;

public class Test {
    public static void main(String[] args) {
        Empleado empleado = new Escritor("Juan", 1000,TipoEscritura.CLASICO);
        System.out.println(empleado);
        System.out.println(empleado.detallesEmpleado());

        //Downcasting
        System.out.println(((Escritor) empleado).getTipoEscritura());

        //Upcasting
        Empleado empleado1  = empleado;
        System.out.println(empleado1.detallesEmpleado());

    }

}
