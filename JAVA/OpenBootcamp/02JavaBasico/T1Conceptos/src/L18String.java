public class L18String {
    public static void main(String[] args) {
        String nombre = "Esternocleidomastoideo";
        String nombreEspacios = "  Esternocleidomastoideo  ";

        // Nos da la longitud
        System.out.println(nombre.length());
        // Cambia el texto a mayusculas
        System.out.println(nombre.toUpperCase());

        // Elimina los espacios
        System.out.println(nombreEspacios);
        System.out.println(nombreEspacios.trim());

        // Comprueba que los dos textos son iguales
        if(nombreEspacios.equals(nombre)){
            System.out.println("Verdadero");
        }else {
            System.out.println("Falso");
        }

    }

}
