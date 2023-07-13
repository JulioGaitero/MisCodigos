package C1FundamentosProgramacion.M04OperadoresJava;

public class C5OperadoresRelacionales {

    public static void main(String[] args) {

        int a = 3;
        int b = 5;
        boolean g = a > b;

        System.out.println(g);

        g = a >= b;

        System.out.println(g);

        if (a % 2 == 0) {
            System.out.println("a es par");
        } else {
            System.out.println("a es impar");
        }

        var edad = 14;
        var esAduto = edad >= 18;

        if (esAduto) {
            System.out.println("Es aduto");
        } else {
            System.out.println("No es aduto");
        }

    }

}
