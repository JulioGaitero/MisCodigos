package C1FundamentosProgramacion.M07CreacionClases.C3ObjetosJava;

public class Persona {

    String nombre;
    String apellido;

    public Persona(String nombre, String apellido) {
        this.nombre = nombre;
        this.apellido = apellido;
    }

    public Persona(){

    }

    public void mostrarInformacion() {
        System.out.println("Nombre: " + nombre +" Apellido: " + apellido);
    }

}
