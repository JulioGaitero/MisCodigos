public class T7Objetos
{
    public static void main(String[] args){

        Coche Seat = new Coche(5);

        System.out.println("Coche construido");
        System.out.println("El numero de puertas del coche es: " +Seat.numeroPuertas);
        System.out.println(Seat.velocidadActual);
        Seat.acelerar();
        System.out.println(Seat.velocidadActual);
        Seat.decelerar();
        System.out.println(Seat.velocidadActual);

        Coche Fiat = new Coche();

        System.out.println("Coche construido");
        System.out.println("El numero de puertas del coche es: " +Fiat.numeroPuertas);
        System.out.println(Fiat.velocidadActual);
        Fiat.acelerar();
        System.out.println(Fiat.velocidadActual);
        Fiat.decelerar();
        System.out.println(Fiat.velocidadActual);
    }
}

class Coche{

    int numeroPuertas;
    int velocidadMaxima = 180;
    int velocidadActual = 0;

    public Coche(int numeroPuertas){
        System.out.println("Estoy en el constructor de coches.");
        this.numeroPuertas = numeroPuertas;
    }

    public Coche(){
        numeroPuertas = 3;
    }

    public void acelerar(){
        System.out.println("Brum Brum Brum");
        velocidadActual = 120;
    };
    public void decelerar(){
        System.out.println("Yiiiiiiii");
        velocidadActual = 0;
    };

}
