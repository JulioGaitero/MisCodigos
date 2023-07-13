package C1FundamentosProgramacion.M04OperadoresJava;

public class C1OperadoresAritmeticos {

    public static void main(String[] args) {
        int a = 1;
        int b = 1;
        int resultadoSuma = a + b;
        int resultadoResta = a - b;
        int resultadoMultiplicacion = a * b;
        double resultadoDivision = (double) a / b;
        double resultadoResto = a % b;

        System.out.println("El resultado de la suma es: " + resultadoSuma);
        System.out.println("El resultado de la resta es: " + resultadoResta);
        System.out.println("El resultado de la multiplicacion es: " + resultadoMultiplicacion);
        System.out.println("El resultado de la division es: " + resultadoDivision);
        System.out.println("El resto de la division es: " + resultadoResto);

        if (a % b == 0) {
            System.out.println("El resultado es numero par, ya que el resto es: " + resultadoResto);
        }else {
            System.out.println("El resultado es numero impar, ya que el resto es: " + resultadoResto);
        }

    }

}
