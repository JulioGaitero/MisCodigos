public class T8Ejercicio {

    public static void main(String[] args){

        Persona Nerea = new Persona();

        Nerea.setNombre("Nerea Arzua");
        Nerea.setTelefono(98532323);
        Nerea.setEdad(42);

        System.out.println("Nombre: " + Nerea.getNombre()+ " Edad: " +Nerea.getEdad() + " Telefono: " +Nerea.getTelefono());
    }
}

class Persona {

    private int edad;
    private String nombre;
    private int telefono;

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }
}
