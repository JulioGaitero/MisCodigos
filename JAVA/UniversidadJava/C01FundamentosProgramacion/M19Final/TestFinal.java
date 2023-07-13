package C1FundamentosProgramacion.M19Final;

public class TestFinal {
    public static void main(String[] args) {

        final int numero1 = 10;
        System.out.println("numero1 = " + numero1);

        System.out.println(Persona.constante);

        final Persona persona = new Persona("Juan");
        System.out.println(persona.getNombre());

        persona.setNombre("Marco");
        System.out.println(persona.getNombre());

    }
}

