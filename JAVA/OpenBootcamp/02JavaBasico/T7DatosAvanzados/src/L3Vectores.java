import java.util.Vector;

public class L3Vectores {

    public static void main(String[] args){
        Vector<Integer> vector = new Vector<>();

        vector.add(0);
        vector.add(1);
        vector.add(2);
        vector.add(3);
        vector.add(4);

        System.out.println("Datos del vector: " +vector);

        vector.remove(2);

        System.out.println("Datos del vector: " +vector);

        System.out.println("Tamaño del vector: " +vector.size());

        System.out.println("Capacidad del vector: " +vector.capacity());

        vector.add(5);
        vector.add(6);
        vector.add(7);
        vector.add(8);
        vector.add(9);
        vector.add(10);
        vector.add(11);
        vector.add(12);

        System.out.println("Datos del vector: " +vector);

        System.out.println("Tamaño del vector: " +vector.size());

        System.out.println("Capacidad del vector: " +vector.capacity());

        Vector<Integer> vector2 = new Vector<>(1,15);

        vector2.add(0);
        vector2.add(1);
        vector2.add(2);
        vector2.add(3);
        vector2.add(4);

        System.out.println("Datos del vector: " +vector2);

        System.out.println("Tamaño del vector: " +vector2.size());

        System.out.println("Capacidad del vector: " +vector2.capacity());

        // Comparamos vectores

        boolean resultadoCoparacion = vector.equals(vector2);

        System.out.println("Son iguales: " + resultadoCoparacion);
        
        // Recorrer vectores

        for (int i :vector2) {

            System.out.println("El valor actual del vector es: " +i);
            
        }

        for (int i = 0; i < vector2.size(); i++) {
            if (i % 2 == 0){
                vector2.remove(i);
                continue;
            }
            System.out.println("El valor de la posicion es: " +vector2.get(i) + " en la posicion: " +i );
        }

        // Decrecemos el vector hasta su capacidad.

        Vector<Integer> vector3 = new Vector<>(16);

        vector3.add(0);
        vector3.add(1);
        vector3.add(2);
        vector3.add(3);
        vector3.add(4);

        System.out.println("Datos del vector: " +vector3);

        System.out.println("Tamaño del vector: " +vector3.size());

        System.out.println("Capacidad del vector: " +vector3.capacity());

        vector3.trimToSize();

        System.out.println("Tamaño del vector: " +vector3.size());

        System.out.println("Capacidad del vector: " +vector3.capacity());

    }

}
