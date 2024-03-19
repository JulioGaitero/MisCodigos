package C2ProgramacionConJava.M11ClaseObject;

public class Test {

    public static void main(String[] args) {
        Empleado empleado1 = new Empleado("Juan", 1000);
        Empleado empleado2 = new Empleado("Juan", 1000);

        if(empleado1 == empleado2) {
            System.out.println("Tiene la misma referencia en memoria");
        }else {
            System.out.println("Tiene distinta referencia en memoria");
        }

        if(empleado1.equals(empleado2)) {
            System.out.println("Tienen el mismo contenido");
        }else {
            System.out.println("Tiene distinto contenido");
        }

        if (empleado1.hashCode() == empleado2.hashCode()) {
            System.out.println("Tienen el mismo hashCode");
        }else {
            System.out.println("Tienen distinto hashCode");
        }
    }
}
