package C1FundamentosProgramacion.M04OperadoresJava;

public class C8PrecedenciaOperadores {

    public static void main(String[] args) {

        int x = 10;
        int y = 5;
        int z = ++x + y--;

        System.out.println(x);
        System.out.println(y);
        System.out.println(z);

        double resultado = 4 + 5 * 2 / 2; // 4 + (5 * 2) / 2
        System.out.println(resultado);

        resultado = (4 + 5) * 5 / 2;
        System.out.println(resultado);

    }

}
