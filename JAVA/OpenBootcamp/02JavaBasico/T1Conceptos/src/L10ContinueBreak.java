public class L10ContinueBreak {

    public static void main(String[] args) {

        int cuenta = 0;

        while (cuenta < 10){

            cuenta++;



            if (cuenta == 5){
                continue; // Salta la iteracion
            }

            if (cuenta == 8){
                break; // Rompe el bucle
            }

            System.out.println(cuenta);
        }

        System.out.println("Se acabo");

    }

}
