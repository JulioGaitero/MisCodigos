public class L14Herencia extends  L12Clases{

    String Tutoria;
    String Alumno;

    L14Herencia(){

    }

    L14Herencia(String Tutoria, String Alumno, String Profesor, String Materia, int Minutos){
        this.Tutoria = Tutoria;
        this.Alumno = Alumno;
        super.Profesor = Profesor;
        super.Materia = Materia;
        super.Minutos = Minutos;
    }

    @Override
    public void mostrarClase(){
        System.out.println("El profesor para la tutoria de hoy es " +Profesor + " Y dara la materia de " +Materia + " Durante " +Minutos + " minutos. Para el alumno " +Alumno );
    }

    public static void main(String[] args) {

    }
}
