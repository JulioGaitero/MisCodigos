package C2ProgramacionConJava.M03BloquesCodigo;

public class Persona {

    private String nombre;
    private String apellido;
    private final int idPersona;

    private static int contador = 0;

    static {
        System.out.println("Ejecucion del metodo static");
        Persona.contador++;
    }

    {
        System.out.println("Ejecucion de bloque no estatico");
        this.idPersona = Persona.contador++;
    }

    public Persona(){
        System.out.println("Ejercucucion del constructor");
    }

    public int getIdPersona() {
        return idPersona;
    }
}
