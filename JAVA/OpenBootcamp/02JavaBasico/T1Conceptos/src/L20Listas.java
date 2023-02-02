import java.util.ArrayList;
import java.util.List;

public class L20Listas {
    public static void main(String[] args) {
        List<String> nombres = new ArrayList<>();

        nombres.add("Julio");
        nombres.add("Nerea");
        nombres.add("Jose Luis");
        nombres.add("Marta");

        System.out.println(nombres);

        for(String posicion:nombres){
            System.out.println(posicion);
        }

    }

}
