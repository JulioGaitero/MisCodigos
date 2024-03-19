package C2ProgramacionConJava.M15Excepciones;

public class TestExcepciones {

    public static void main(String[] args) {
        int resul = 10;

        try {
            resul = Aritmetica.dividir(10, 0);
            System.out.println(resul);
        } catch (OperacionExcepcion e) {
            System.out.println("ERROR");
            System.out.println(e.getMessage());
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            System.out.println("Fin del programa");
            System.out.println("Este mensaje siempre se ejecuta");
        }
        System.out.println("Resultado = " + resul);

        Aritmetica.dividir(2, 0);
    }


}
