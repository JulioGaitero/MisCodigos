package C1FundamentosProgramacion.M13This;

public class C1PalabraThis {

    public static void main(String[] args) {
        Persona persona = new Persona("Adrian", "Perez");
        System.out.println(persona);
        System.out.println(persona.nombre);
        System.out.println(persona.apellido);
    }

}

class Persona {
    String nombre;
    String apellido;

    Persona(String nombre, String apellido) {
        this.nombre = nombre;
        this.apellido = apellido;
        System.out.println(this);

        new Imprimir().imprimir(this);
    }
}

class Imprimir {
    public void imprimir(Persona persona) {
        System.out.println("Persona desde imprimir: " + persona);
        System.out.println("Imprimir desde this: " + this);

    }
}
