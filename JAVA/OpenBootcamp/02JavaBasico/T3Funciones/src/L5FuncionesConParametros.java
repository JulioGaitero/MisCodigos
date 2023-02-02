public class L5FuncionesConParametros {
    public static void main(String[] args) {
        imprimeSaludo("Nerea");
        System.out.println(devuelveSaludo("Manuel"));
        int resultado1 = suma(3,5);
        int resultado2 = suma(3,58);
        int resultado3 = suma(3,5,6);
    }

    public static void imprimeSaludo(String nombre){
        System.out.println("Hey hola " + nombre);
    }

    public static String devuelveSaludo(String nombre){
        return "Hola " +nombre+ " te devuelvo el nombre";
    }

    public static int suma(int numero1,int  numero2){
        return numero1+numero2;
    }
    public static int suma(int numero1,int  numero2, int numero3){
        return numero1+numero2+numero3;
    }
}
