public class L22TryCatch {

    public static void main(String[] args) {
        try {
            int resultado = 5 / 0;
        }catch (ArithmeticException e){
            e.printStackTrace();
        }finally{
            System.out.println("Se ejecuta haya ido bien, o haya ido mal");
        }
        System.out.println("Final");

    }

}
