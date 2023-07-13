package C1FundamentosProgramacion.M11PasoValorReferencia;

public class C2Persona {

    String nombre;
    String apellido;

    public C2Persona(String nombre, String apellido) {
        this.nombre = nombre;
        this.apellido = apellido;
    }

    public C2Persona(){

    }

    public void mostrarInformacion() {
        System.out.println("Nombre: " + nombre +" Apellido: " + apellido);
    }


}

