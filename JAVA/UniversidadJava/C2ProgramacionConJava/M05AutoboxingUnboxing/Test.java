package C2ProgramacionConJava.M05AutoboxingUnboxing;

public class Test {

    public static void main(String[] args) {

        // int - Integer
        // long - Long
        // float - Float
        // double - Double

        int entero = 10;
        Integer enteroEnvolvente = entero;
        System.out.println(enteroEnvolvente);
        System.out.println(enteroEnvolvente.toString() + " Autoboxing");
        System.out.println(enteroEnvolvente.byteValue() + " Autoboxing");
        System.out.println(enteroEnvolvente.shortValue() + " Autoboxing");
        System.out.println(enteroEnvolvente.doubleValue() + " Autoboxing");

        int entero2 = enteroEnvolvente;

        System.out.println(entero2 + " Unboxing");



    }

}
