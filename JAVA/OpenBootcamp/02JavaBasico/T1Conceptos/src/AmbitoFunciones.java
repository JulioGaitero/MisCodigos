public class AmbitoFunciones {

    public static void main(String[] args) {

        // Private: Solo desde la clase.
        // L5Funciones.holaMundo(); Al ser privada no nos deja

        // Public:
        System.out.println(L5Funciones.devolverSaludo());

        // Protected: Solo accesible clases del paquete. Y clases hijas en paquete

        L5Funciones.holaMundo("Mariana");

        // Sin modificador de ambito. Solo paquete.




    }

}
