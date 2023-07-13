package C1FundamentosProgramacion.M11PasoValorReferencia;

public class C2PasoReferencia {

    public static void main(String[] args) {

        C2Persona persona1 = new C2Persona();
        persona1.nombre = "Juan";
        persona1.apellido = "Fernandez";
        persona1.mostrarInformacion();

        cambiaValor(persona1);

        persona1.mostrarInformacion();

    }

    public static void cambiaValor(C2Persona persona) {
        persona.nombre = "Adrian";
    }

}
