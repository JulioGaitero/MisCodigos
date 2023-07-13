package C1FundamentosProgramacion.M07CreacionClases.C3ObjetosJava;

public class PruebaPersona {

    public static void main(String[] args) {

        Persona persona = new Persona("Juan", "Perez");
        persona.mostrarInformacion();

        Persona persona2 = new Persona("Adrian", "Perez");
        persona2.mostrarInformacion();

        Persona persona3 = new Persona();
        persona3.nombre = "Marta";
        persona3.apellido = "Perez";
        persona3.mostrarInformacion();

        System.out.println(persona);
        System.out.println(persona2);
        System.out.println(persona3);


    }

}
