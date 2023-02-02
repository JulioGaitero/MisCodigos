import java.util.HashMap;
import java.util.Map;

public class L21Mapas {
    public static void main(String[] args) {

        Map<String,String> personas = new HashMap<>();

        personas.put("3213212A", "Nerea Arzua");
        personas.put("2323212A", "Asier Arzua");

        System.out.println(personas);

        for(String clave : personas.keySet()){
            System.out.println(clave);
        }

        for(String valor: personas.values()){
            System.out.println(valor);
        }

    }

}
