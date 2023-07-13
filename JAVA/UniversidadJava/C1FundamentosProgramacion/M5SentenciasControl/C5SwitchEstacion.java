package C1FundamentosProgramacion.M5SentenciasControl;

public class C5SwitchEstacion {

    public static void main(String[] args) {

        int mes = 2;
        String estacion = "Estacion desconocida";

        switch (mes) {
            case 1: case 2: case 12:
                estacion = "Invierno";
                break;
            case 3: case 4: case 5:
                estacion = "Primavera";
                break;
            case 6: case 7: case 8:
                estacion = "Verano";
                break;
            case 9: case 10: case 11:
                estacion = "Otoño";
                break;
            default:
                estacion = "Estacion desconocida";
                break;
        }

        System.out.println("La estacion es: " + estacion);
    }

}
