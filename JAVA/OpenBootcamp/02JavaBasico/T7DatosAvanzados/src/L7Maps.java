import java.util.HashMap;
import java.util.Map;

public class L7Maps {

    public static void main(String[] args){

        HashMap<Integer,String> usuario = new HashMap<>();

        usuario.put(53545412,"Jose Antonio");
        usuario.put(52512234,"Maria Arce");

        System.out.println(usuario);

        System.out.println(usuario.get(53545412));

        usuario.replace(53545412, "Susana Garcia");

        System.out.println(usuario.get(53545412));

        usuario.remove(53545412);

        System.out.println(usuario);

        usuario.put(53545412,"Jose Antonio");

        System.out.println(usuario);

        for(Map.Entry<Integer, String> elemento : usuario.entrySet()){

            System.out.println("Elemento clave es:" +elemento.getKey());
            System.out.println("Elemento clave es:" +elemento.getValue());

        }

    }

}
