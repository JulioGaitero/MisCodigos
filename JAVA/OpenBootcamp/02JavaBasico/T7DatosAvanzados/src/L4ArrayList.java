import java.util.ArrayList;

public class L4ArrayList {

    public static void main(String[] args) {

        ArrayList<String> lista = new ArrayList<String>();

        lista.add("Juan");
        lista.add("Silvia");
        lista.add("Carmen");
        lista.add("Jose");


        System.out.println(lista);
        System.out.println("Tamaño del ArrayList: " + lista.size());

        lista.remove("Juan");
        System.out.println(lista);
        System.out.println("Tamaño del ArrayList: " + lista.size());


        for (String nombre : lista) {
            System.out.println(nombre);
        }

        for (int i = 0; i < lista.size(); i++) {
            System.out.println(lista.get(i));
        }
        
        // Convertir arrayList en un array
        
        String arrayConvertido[] = new String[lista.size()];

        for (int i = 0; i < lista.size(); i++) {

            arrayConvertido[i] = lista.get(i);

        }

        for(String elemento: arrayConvertido){
            System.out.println("El elemento es: "+elemento);
        }

        // Otra forma de convertir el array

        for(Object arrayObjeto: lista.toArray()){
            System.out.println(arrayObjeto.toString());
        }

    }


}
