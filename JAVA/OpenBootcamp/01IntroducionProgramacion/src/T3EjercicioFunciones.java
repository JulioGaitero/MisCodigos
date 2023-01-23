public class T3EjercicioFunciones {

    public static void main(String[] args){

        suma(12,15,18);

         coche miCoche = new coche();
         miCoche.IncremetaPuertas();
         System.out.println(miCoche.nPuertas);

    }

    public static void suma(int a, int b, int c){
        System.out.println(a+b+c);
    }
}

class  coche{
    int nPuertas = 4;

    public int IncremetaPuertas(){

        return nPuertas++;

    }

}
