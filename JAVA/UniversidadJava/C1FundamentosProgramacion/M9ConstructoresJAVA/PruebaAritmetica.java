package C1FundamentosProgramacion.M9ConstructoresJAVA;

public class PruebaAritmetica {

    public static void main(String[] args) {

        Aritmetica forma1 = new Aritmetica(54, 2);
        int suma = forma1.suma();
        System.out.println("La suma es: " + suma);

        Aritmetica forma2 = new Aritmetica();
        forma2.lado1 = 1;
        forma2.lado2 = 2;
        suma = forma2.suma();
        System.out.println("La suma es: " + suma);

        Aritmetica forma3 = new Aritmetica(23,21,22);

    }

}
