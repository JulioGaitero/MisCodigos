public class L5Funciones {
    public static void main(String[] args) {

        String Saludo;

        holaMundo();

        System.out.println(devolverSaludo());

        holaMundo("Andres");
        holaMundo("Nerea");

        Saludo = devolverSaludo();

        System.out.println(Saludo);

    }

    protected static void holaMundo(String Nombre) {

        System.out.println("Hola Mundo. Que tal estas " +Nombre);
    }

    private static void holaMundo() {

        System.out.println("Hola Mundo");
        System.out.println("Hola Mundo");
    }

    public static String devolverSaludo(){

        return "Hola mundo";
    }
}
