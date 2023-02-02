package Condicionales;

public class L2IfElseIf {
    public static void main(String[] args) {
        String dia = "jueves";
        boolean resultado = dia.equals("jueves");

        if (dia.equals("lunes")) {
            System.out.println("Animo empieza la semana.");
        } else if (dia.equals("martes")) {
            System.out.println("Lo peor de la semana ya paso.");
        } else if (dia.equals("miercoles")) {
            System.out.println("Llego la mitad de semana.");
        } else if (dia.equals("jueves")) {
            System.out.println("Animo mañana es viernes!.");
        } else if (dia.equals("viernes")) {
            System.out.println("Hoy es viernes y el cuerpo lo sabe.");
        } else if (dia.equals("sabado")) {
            System.out.println("Sabado sabadete.");
        } else if (dia.equals("domingo")) {
            System.out.println("Acuestate pronto hoy que mañana hay que madrugar");
        } else {
            System.out.println("Dia invalido");
        }

    }
}
