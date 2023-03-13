public class L1String {
    public static void main(String[] args) {
        String cadena = "Cadena de texto";
        String cadenaMayus = cadena.toUpperCase();
        String cadenaMinus = cadena.toLowerCase();
        boolean resultado = cadena.startsWith("Cad");
        boolean resultadoFinal = cadena.endsWith("casa");
        int cadenaLength = cadena.length();
        char letra = cadena.charAt(0);

        System.out.println("La longitud de la cadena es: " +cadenaLength);
        System.out.println("La cadena a minusculas es: " +cadenaMinus);
        System.out.println("Paso la cadena en mayusculas: "+ cadenaMayus);

        if(resultado){
            System.out.println("Empieza por lo que estoy buscando");
        }else{
            System.out.println("No empieza por lo que estoy buscando");
        }

        if(resultadoFinal){
            System.out.println("Acaba por lo que estoy buscando");
        }else{
            System.out.println("No acaba por lo que estoy buscando");
        }

        System.out.println("El carcter es: "+letra);

        for (int i =0; i < cadena.length(); i++){
            System.out.println("Caracter actual: " +cadena.charAt(i));
        }


    }
}
