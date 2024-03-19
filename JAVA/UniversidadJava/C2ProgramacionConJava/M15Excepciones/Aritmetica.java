package C2ProgramacionConJava.M15Excepciones;

public class Aritmetica {

    public static int dividir(int a, int b) throws OperacionExcepcion {

        if (b == 0) {
            throw new OperacionExcepcion("No se puede dividir por 0");
        } else {
            return a / b;
        }
    }

}
