package C1FundamentosProgramacion.M10AlcanceVariables;

public class PruebaAritmetica {

    public static void main(String[] args) {

        int a = 19;
        int b = 2;

        Aritmetica forma1 = new Aritmetica();
        int suma = forma1.suma();
        System.out.println("La suma es: " + suma);

        PruebaAritmetica.saluda();

    }

    public static void saluda() {
        System.out.println("Hola");
    }

}
