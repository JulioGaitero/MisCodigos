package C2ProgramacionConJava.M06Modificadores.Paquete1;

public class Clase4Private {
    private String nombrePrivado = "Variable con valor privado";

    private Clase4Private() {
        System.out.println("Contructor privado");
    }

    private void metodoPrivado(){
        System.out.println("Metodo privado");
    }
}
