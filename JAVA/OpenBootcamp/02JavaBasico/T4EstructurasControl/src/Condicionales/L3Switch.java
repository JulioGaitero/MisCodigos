package Condicionales;

public class L3Switch {
    public static void main(String[] args) {
        String dia = "viernes";
        switch (dia){
            case "lunes":
                System.out.println("Animo empieza la semana");
                break;
            case "martes":
                System.out.println("Ya paso lo peor de la semana");
                break;
            case "miercoles":
                System.out.println("Mitad de semana!!!");
                break;
            case "jueves":
                System.out.println("Mañana es viernes");
                break;
            case "viernes":
                System.out.println("Es viernes y el cuerpo lo sabe");
                break;
            case "sabado":
                System.out.println("Animo empieza la semana");
                break;
                case "domingo":
                System.out.println("Acuestate pronto");
                break;
            default:
                System.out.println("Dia invalido");
        }
    }
}
