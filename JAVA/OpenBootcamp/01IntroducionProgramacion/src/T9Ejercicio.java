public class T9Ejercicio {

    public static void main(String[] args){

        cliente mario = new cliente();

        mario.nombre = "Mario";
        System.out.println("Nombre: " + mario.nombre);
        mario.edad = 42;
        System.out.println("Edad: " + mario.edad);
        mario.telefono = 98532322;
        System.out.println("Telefono: " + mario.telefono);
        mario.credito = 121200;
        System.out.println("Saldo: " + mario.credito);

        trabajador ines = new trabajador();

        ines.nombre = "Ines";
        System.out.println("Nombre: " + ines.nombre);
        ines.edad = 39;
        System.out.println("Edad: " + ines.edad);
        ines.telefono = 98532322;
        System.out.println("Telefono: " + ines.telefono);
        ines.sueldo = 1900;
        System.out.println("Sueldo: " + ines.sueldo);


    }

}

class persona{
    int edad;
    String nombre;

    int telefono;
}

class cliente extends  persona{

    double credito;

}

class trabajador extends  persona{
    double sueldo;
}
