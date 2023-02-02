public class L12Clases {

    public static void main(String[] args) {

    }

    // atributos
    int Minutos;
    String Profesor;
    String Materia;

    // constructores

    public L12Clases(){

    }
    public L12Clases(String Profesor, String Materia, Integer Minutos){
        this.Profesor = Profesor;
        this.Materia = Materia;
        this.Minutos = Minutos;
    }

    // comportamiento

    public void mostrarClase(){
        System.out.println("El profesor de hoy es " +Profesor + " Y dara la materia de " +Materia + " Durante " +Minutos + " minutos.");
    }

}
