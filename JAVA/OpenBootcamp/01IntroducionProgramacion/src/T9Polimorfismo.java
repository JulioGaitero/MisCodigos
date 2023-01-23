public class T9Polimorfismo {

public static void main(String[]args)
{
    CochePoli Poli1 = new CochePoli();
    Poli1.diHola();
    VehiculoPoli Poli2 = new VehiculoPoli();
    Poli2.diHola();

    Poli1.sumaNumero(4,5);
    Poli1.sumaNumero(2.2,2.2);
    Poli1.sumaNumero((float)3,(float)5);

}
}

class VehiculoPoli{
    public void diHola(){
        System.out.println("Hola");
    }



}

class CochePoli extends VehiculoPoli{

    public void diHola(){
        System.out.println("Soy un coche");
    }

    public int sumaNumero(int a, int b){
        return a + b;

    }

    public float sumaNumero(float a, float b){
        return a + b;
    }

    public double sumaNumero(double a, double b){
        return a + b;
    }

}