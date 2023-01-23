public class T4Ejercicio {
    public static void main(String[] args){
        int numeroIf = 2;
        int numeroWhile = 1;
        int numeroDoWhile = 3;
        var estacionCase = "verano";


        if (numeroIf < 0 ){
            System.out.println("El numero es negativo");
        }else {
            System.out.println("El numero es positivo");
        }

        while (numeroWhile < 3){
            System.out.println(numeroWhile);
            numeroWhile++;
        }

        do{
            System.out.println(numeroDoWhile);
            numeroDoWhile++;
        }while (numeroDoWhile < 3);

        for(int numeroFor = 0; numeroFor <= 3; numeroFor++){
            System.out.println("El valor de la variable numeroFor es: " +numeroFor);
        }

        switch (estacionCase){
            case "verano":
                System.out.println("Es verano");
                break;
            case "invierno":
                System.out.println("Es invierno");
                break;
            case "otoño":
                System.out.println("Es otoño");
                break;
            case "primavera":
                System.out.println("Es primavera");
                break;
            default:
                System.out.println("Es " +estacionCase);

        }

    }
}
