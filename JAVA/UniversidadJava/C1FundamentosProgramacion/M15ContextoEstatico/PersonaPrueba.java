package C1FundamentosProgramacion.M15ContextoEstatico;
public class PersonaPrueba {

    public static void main(String[] args) {
        Persona persona1 = new Persona("Adrian");
        System.out.println(persona1);

        Persona persona2 = new Persona("Sara");
        System.out.println(persona2);

        persona2.setIdPersona(3);
        System.out.println(persona2);

        Persona persona3 = new Persona("Jose");
        System.out.println(persona3);

        Persona persona4 = new Persona("Maria");
        System.out.println(persona4);

        imprimir(persona1);
    }

    public static void imprimir(Persona persona){
        System.out.println(persona);
    }

}
