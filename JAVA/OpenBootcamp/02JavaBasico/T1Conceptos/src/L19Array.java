public class L19Array {
    public static void main(String[] args) {

        int[] notas = new  int [10];
        int[] notas2 = {10,10,8,9,10,8,9,10,9,10};

        notas[0] = 10;
        notas[1] = 8;

        System.out.println(notas[0]);

        for(int i = 0; i < notas.length; i++){
            System.out.println(notas[i]);
        }
        for(int posicion:notas){
            System.out.println(posicion);
        }
    }
}
