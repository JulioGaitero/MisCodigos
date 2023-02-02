public class L2OpComparacion {
    public static void main(String[] args) {

        int numero1 = 30;
        int numero2 = 18;
        boolean resultado1 = numero1 > numero2;
        boolean resultado2 = numero1 < numero2;

        /*
        > mayor que
        < menor que
        >= mayor igual que
        <= menor igual que
        */

        System.out.println(resultado1);
        System.out.println(resultado2);

        if (numero1 > numero2){
            System.out.println("El numero es mayor");
        }else{
            System.out.println("El numero es menor");
        }

    }
}
