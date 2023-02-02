public class L7SentenciaIfElse {
    public static void main(String[] args) {

        boolean check = true;
        int numero1 = 19;
        int numero2 = 6;
        int numero3 = 8;

        if( numero1 < numero2 && numero3 > numero1){
            System.out.println("Verdero!");
        }else if(numero1> numero2){
            System.out.println("Esta regulinchi :/");
        }
        else {
            System.out.println("Algo salio mal :(");
        }


        if (check){
            System.out.println("Es cierto!");
    }else {
            System.out.println("Es falso!");}
    }


}
