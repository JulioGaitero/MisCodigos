package C1FundamentosProgramacion.M04OperadoresJava;

public class C7OperadorTernario {

    public static void main(String[] args) {

        String resultado = (10 > 5) ? "Verdadero" : "Falso";
        System.out.println("Resultado: " + resultado);

        var num = 10;

        resultado = (num % 2 == 0) ? "Numero Par" : "Numero Impar";
        System.out.println("Resultado: " + resultado);

    }


}
