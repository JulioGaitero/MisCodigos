public class L4Funciones {
    public static void main(String[] args) {

        int numeroDevuetlo = dameNumero();

        // opcion 1: Funcion sin parametros

        mostrarLineas();
        // opcion 2: Funcion sin parametros y con tipo retorno

        System.out.println(dameLineas());
        System.out.println(numeroDevuetlo);

    }

    public static void mostrarLineas() {
        System.out.println("Linea de codigo 1");
        System.out.println("Linea de codigo 2");
        System.out.println("Linea de codigo 3");
        System.out.println("Linea de codigo 3");
        System.out.println("Linea de codigo 4");
    }

    public static String dameLineas() {
        return "Linea devuelta 1 \nLinea devuelta 2 " ;
    }

    public static int dameNumero(){
        return  100;
    }

}
