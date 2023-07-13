package C1FundamentosProgramacion.M14EncapsulamientoJava;

public class C1Empasulamiento {

    public static void main(String[] args) {

        Persona persona = new Persona();
        persona.setNombre("Juan");
        persona.setApellido("Perez");
        persona.setSueldo(1960.92);
        persona.setEliminado(true);
        System.out.println(persona.getNombre() + " " + persona.getApellido() + " " + persona.getSueldo() + " " + persona.isEliminado());

        Persona persona2 = new Persona("Adrian", "Perez", 1960.92, true);

        persona2.setNombre("Sara");
        System.out.println(persona2.getNombre() + " " + persona2.getApellido() + " " + persona2.getSueldo() + " " + persona2.isEliminado());

        System.out.println(persona.toString());
    }
}
