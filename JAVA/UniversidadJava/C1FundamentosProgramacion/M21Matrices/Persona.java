package C1FundamentosProgramacion.M21Matrices;

public class Persona {

    private int idPersona;
    private String nombre;
    private static int contadorPersonas = 0;

    public Persona(String nombre) {
        this.nombre = nombre;
        Persona.contadorPersonas++;
        this.idPersona = Persona.contadorPersonas;
    }

    public Persona() {

    }

    public String getNombre() {
        return nombre;
    }

    @Override
    public String toString() {
        return "Persona{" +
                "nombre='" + nombre + '\'' +
                '}' +super.toString();
    }
}
