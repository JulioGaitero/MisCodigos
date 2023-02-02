public class L15Polimorfismo {
    public static void main(String[] args) {
        L12Clases ClaseLunes = new L12Clases();

        L14Herencia TutoriaLunes = new L14Herencia();

        L12Clases TutoriaMartes = new L14Herencia("Mañanas","Sandra","Julio","Datos",180);

        if (TutoriaMartes instanceof L14Herencia){
            System.out.println("Tutoria");
        }

        TutoriaMartes.mostrarClase();

    }
}
