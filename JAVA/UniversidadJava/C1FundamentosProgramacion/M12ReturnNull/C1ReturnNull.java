package C1FundamentosProgramacion.M12ReturnNull;

public class C1ReturnNull {

    public static void main(String[] args) {

        C1Persona persona = new C1Persona();
        C1Persona persona2 = new C1Persona();
        persona.nombre = "Adrian";
        persona.apellido = "Perez";
        persona.mostrarInformacion();
        persona2 = cambiaValor(persona);
        persona.mostrarInformacion();
        persona2.mostrarInformacion();

    }
    public static C1Persona cambiaValor(C1Persona persona){
        persona.nombre = "Ines";
        return persona;
    }

}
