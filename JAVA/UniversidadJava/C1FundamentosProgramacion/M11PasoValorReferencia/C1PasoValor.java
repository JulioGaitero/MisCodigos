package C1FundamentosProgramacion.M11PasoValorReferencia;

public class C1PasoValor {
    public static void main(String[] args) {
        int x = 10;
        System.out.println("Primer Valor: " +x);

        cambioValor(x);

        System.out.println("Despues de intentar cambiarle el valor en cambioValor(): " +x);
    }

    public static void cambioValor(int arg1) {

        System.out.println("El valor dentro de cambioValor(): " +arg1);
        arg1 = 20;
        System.out.println("El valor cambiado dentro de el cambioValor(): " +arg1);

    }

}
