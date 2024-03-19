package C2ProgramacionConJava.M06Modificadores.Paquete1;

public class Clase2Protected {

    protected String nombreProtected = "Variable con valor protected";

    protected Clase2Protected() {
        System.out.println("Contructor protected");
    }

    protected Clase2Protected(String nombre) {
        this.nombreProtected = nombre;
        System.out.println("Contructor protected");

    }

    protected void metodoProtected() {
        System.out.println("Metodo protected");
    }

}
