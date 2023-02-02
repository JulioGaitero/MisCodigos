package Repetitivas;

public class L6While {

    public static void main(String[] args) {
        int contador= 0;

        while (contador < 10) {
            contador++;
            if (contador == 3){
                System.out.println("Continue!");
                continue;
            }else if(contador == 6){
                System.out.println("Break!");
                break;
            }
            System.out.println("El contador vale "+contador);
        }
    }

}
