package C1FundamentosProgramacion.M05SentenciasControl;

public class C2IfElseEjercicio {

    public static void main(String[] args) {
        int numero = 2;
        String numeroTexto = "Numero Desconocido";

        if (numero == 1) {
            numeroTexto = "Numero Uno";
        } else if (numero == 2) {
            numeroTexto = "Numero Dos";
        } else if (numero == 3) {
            numeroTexto = "Numero Tres";
        } else {
            numeroTexto = "Numero Desconocido";
        }
        System.out.println(numeroTexto);

    }

}
