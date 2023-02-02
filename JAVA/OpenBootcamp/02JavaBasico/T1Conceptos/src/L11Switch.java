public class L11Switch {
    public static void main(String[] args) {

        String tiempo = "";

        switch (tiempo){
            case "Soleado":
                System.out.println("Hace sol!!!");
                break;
            case "Nublado":
                System.out.println("Esta nublado!!");
                break;
            default:
                System.out.println("Todavia no hay parte meteorologico");
        }


    }
}
