package C1FundamentosProgramacion.M05SentenciasControl;

public class C4Switch {

    public static void main(String[] args) {

        int numero = 2;
        String numeroTexto = "Numero Desconocido";

        switch (numero) {
            case 1:
                numeroTexto = "Numero Uno";
                break;
            case 2:
                numeroTexto = "Numero Dos";
                break;
            case 3:
                numeroTexto = "Numero Tres";
                break;
            default:
                numeroTexto = "Numero Desconocido";
                break;
        }

        System.out.println(numeroTexto);

    }

}
