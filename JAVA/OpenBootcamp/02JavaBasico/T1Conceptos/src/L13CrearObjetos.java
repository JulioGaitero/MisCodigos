public class L13CrearObjetos {
    public static void main(String[] args) {
        L12Clases ClaseMiercoles = new L12Clases("Mario", "Ingles", 120);
        L12Clases ClaseJueves = new L12Clases();
        ClaseMiercoles.mostrarClase();
        ClaseMiercoles.Minutos = 90;
        ClaseMiercoles.mostrarClase();
        ClaseJueves.mostrarClase();
        L14Herencia TutoriaViernes = new L14Herencia("Mañanas", "Jose Antonio", "Mario", "Programacion", 90);
        TutoriaViernes.Profesor = "Mario";
        TutoriaViernes.mostrarClase();
    }
}
