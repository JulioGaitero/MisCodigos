package C1FundamentosProgramacion.M03TiposPrimitivos;

public class C1NumericosEnteros {

    public static void main(String[] args) {

        byte numeroByte = 10;
        System.out.println("El valor minimo de un byte es: "+ Byte.MIN_VALUE);
        System.out.println("El valor maximo de un byte es: "+ Byte.MAX_VALUE);
        numeroByte = (byte) 129;
        System.out.println(numeroByte);
        System.out.println(" ");

        short numeroShort = 10;
        System.out.println("El valor minimo de un short es: "+ Short.MIN_VALUE);
        System.out.println("El valor maximo de un short es: "+ Short.MAX_VALUE);
        System.out.println(" ");
        int numeroInt = 10;
        numeroInt = (int) 2147483649L;
        System.out.println("El valor minimo de un int es: "+ Integer.MIN_VALUE);
        System.out.println("El valor maximo de un int es: "+ Integer.MAX_VALUE);
        System.out.println(numeroInt);
        System.out.println(" ");
        long numeroLong = 10;
        System.out.println("El valor minimo de un long es: "+ Long.MIN_VALUE);
        System.out.println("El valor maximo de un long es: "+ Long.MAX_VALUE);

    }

}
