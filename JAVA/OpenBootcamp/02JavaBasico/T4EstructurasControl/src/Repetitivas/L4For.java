package Repetitivas;

public class L4For {
    public static void main(String[] args) {
        String[] nombres = {"Nerea","Julio","Sara"};

        for(int i = 0; i < nombres.length; i++){
            System.out.println(nombres[i]);
        }

        for(int i = 0; i < 9; i++ ){
            System.out.println("Hola!!! Vuelta numero: " +(i+1));
        }
    }
}
