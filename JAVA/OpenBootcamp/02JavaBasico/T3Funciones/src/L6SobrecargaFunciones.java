public class L6SobrecargaFunciones {
    public static void main(String[] args) {
        saludame("Nerea");
        saludame("Iyan","Menendez");
        saludame("Ines","Bermejo",32);

    }

    public static void saludame(String nombre){
        System.out.println("Hola: "+nombre+" ¿Como estas?");
    }

    public static void saludame(String nombre, String apellido){
        System.out.println("Hola: "+nombre+ " " + apellido+" Me encanta tu apellido " );
    }

    public static void saludame(String nombre, String apellido,int edad){
        System.out.println("Hola: "+nombre+ " " + apellido+" Me encanta tu apellido " +
                "asi que tu edad es " +edad );
    }

}
