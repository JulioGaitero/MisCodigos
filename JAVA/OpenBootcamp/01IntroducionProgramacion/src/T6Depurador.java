public class T6Depurador {

    public static void main(String[] args){
        int suma = 0;
        int valores[] = new int[6];
        int posicion = 5;

        suma += 15;

        System.out.println(suma);
        System.out.println(valores[posicion]);
        funcion1();
    }

    public static void funcion1(){
        funcion2();
    }

    public static void funcion2(){
        funcion3();
    }

    public static void funcion3(){
        System.out.println("Hola");    }

}
