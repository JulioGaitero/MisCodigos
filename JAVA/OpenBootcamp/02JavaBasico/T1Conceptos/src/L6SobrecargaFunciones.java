public class L6SobrecargaFunciones {

    public static void main(String[] args) {

        devuelveNombre("Antonio");
        devuelveNombre("Antonio","Garcia");
        devuelveNombre("Antonio","Garcia","Amado");

    }

    private static void devuelveNombre(String Nombre){
        System.out.println("Hola "+Nombre);
    }

    private static void devuelveNombre(String Nombre, String Apellido ){
        System.out.println("Hola "+Nombre + " " +Apellido);
    }

    private static void devuelveNombre(String Nombre, String Apellido , String Apellido2 ){
        System.out.println("Hola "+Nombre + " " +Apellido + " " +Apellido2);
    }

}
