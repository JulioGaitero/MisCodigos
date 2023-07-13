package C1FundamentosProgramacion.M04OperadoresJava;

public class C6OperacionesCondicionales {

    public static void main(String[] args) {

        int a = 12;
        int min = 5;
        int max = 10;

        if (a >= min && a <= max) {
            System.out.println("a es entre " + min + " y " + max);
        } else {
            System.out.println("a no es entre " + min + " y " + max);
        }

        boolean diaVacaciones = true;
        boolean diaDescanso = false;

        if (diaVacaciones || diaDescanso) {
            System.out.println("No puede asistir");
        }else {
            System.out.println("Puede asistir");
        }



    }

}
