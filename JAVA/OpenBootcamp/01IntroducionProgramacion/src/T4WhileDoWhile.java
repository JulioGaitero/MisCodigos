public class T4WhileDoWhile {
    public static void main(String[] args){
        int contador = 10;

        while (contador > 0) {
            System.out.println("While - El contado vale " +contador);
            contador--;
        }

        do{
            System.out.println("Do While - El contado vale " +contador);
            contador--;
        }while (contador > 10);
    }
}
