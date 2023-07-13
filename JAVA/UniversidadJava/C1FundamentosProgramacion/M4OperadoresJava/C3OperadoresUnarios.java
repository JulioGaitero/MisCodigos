package C1FundamentosProgramacion.M4OperadoresJava;

public class C3OperadoresUnarios {

    public static void main(String[] args) {

        int a = 3;
        int b = -a;

        System.out.println("a = " + a);
        System.out.println("b = " + b);

        boolean c = true;
        boolean d = !c;

        System.out.println("c = " + c);
        System.out.println("d = " + d);

        int e = 10;
        System.out.println("e = " + e);
        int f = ++e;
        System.out.println("f = " + f);

        int g = 10;
        int h = --g;

        System.out.println("g = " + g);
        System.out.println("h = " + h);

        int i = 10;
        System.out.println("i = " + i);
        int j = i++;
        System.out.println("j = " + j);
        System.out.println("i = " + i);

    }

}
