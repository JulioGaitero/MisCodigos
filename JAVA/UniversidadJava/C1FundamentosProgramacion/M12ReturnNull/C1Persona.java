package C1FundamentosProgramacion.M12ReturnNull;

public class C1Persona {

    String nombre;
    String apellido;

    public C1Persona(String nombre, String apellido) {
        this.nombre = nombre;
        this.apellido = apellido;
    }

    public C1Persona(){

    }

    public void mostrarInformacion() {
        System.out.println("Nombre: " + nombre +" Apellido: " + apellido);
    }


}

