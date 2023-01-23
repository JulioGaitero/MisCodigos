public class T4Case {
    public static void main(String[] args){
        var estacion = "otoño";
        var dia = "lunes";
        switch (estacion) {
            case "verano":
                System.out.println("Es verano");
                break;
            case "primavera":
                System.out.println("Es primavera");
                break;
            default:
                System.out.println("Es "+estacion);

        }

        switch (dia){
            case "lunes":
            case "martes":
            case "miercoles":
            case "jueves":
            case "viernes":
                System.out.println("Hoy es dia laborable");
                break;
            case "sabado":
            case "domingo":
                System.out.println("Es fin de semana a descansar.");
                break;
        }

    }
}
