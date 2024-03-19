package C2ProgramacionConJava.M02ManejoEnums;

public class C01Test {

    public static void main(String[] args) {
        System.out.println(C01Enums.Dias.Domingo);
        indicarDia(C01Enums.Dias.Lunes);
        indicarDia(C01Enums.Dias.Martes);

        System.out.println(C02Continentes.AFRICA + " El numero de paises es: " + C02Continentes.AFRICA.getNumeroPaises()
                + " y su habitantes es: " + C02Continentes.AFRICA.getHabitantes());
    }

    private static void indicarDia(C01Enums.Dias dias) {
        switch (dias){
            case Lunes:
                System.out.println("Primer dia de la semana");
                break;
            case Martes:
                System.out.println("Segundo dia de la semana");
                break;
            case Miercoles:
                System.out.println("Tecer dia de la semana");
                break;
            case Jueves:
                System.out.println("Cuarto dia de la semana");
                break;
            case Viernes:
                System.out.println("Quinto dia de la semana");
                break;
            case Sabado:
                System.out.println("Sexto dia de la semana");
                break;
            case Domingo:
                System.out.println("Septimo dia de la semana");
                break;

        }

    }

}
