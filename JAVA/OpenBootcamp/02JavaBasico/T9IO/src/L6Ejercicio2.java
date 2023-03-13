import java.io.*;
import java.util.*;

// Sorpréndenos creando un programa de tu elección que utilice InputStream, PrintStream, excepciones,
// un HashMap y un ArrayList, LinkedList o array.
public class L6Ejercicio2 {

    public static void main(String[] args) {
        try {
            // Abrir el archivo de entrada para lectura
            FileInputStream inputStream = new FileInputStream("datos.txt");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));

            // Crear un HashMap para almacenar los nombres y edades
            HashMap<String, Integer> nombresEdades = new HashMap<String, Integer>();

            // Leer los datos del archivo y agregarlos al HashMap
            String linea;
            while ((linea = bufferedReader.readLine()) != null) {
                String[] partes = linea.split(",");
                String nombre = partes[0].trim();
                int edad = Integer.parseInt(partes[1].trim());
                nombresEdades.put(nombre, edad);
            }

            // Cerrar el archivo de entrada
            inputStream.close();

            // Crear un ArrayList para almacenar los nombres ordenados por edad
            ArrayList<String> nombresOrdenados = new ArrayList<String>();

            // Crear un LinkedList para almacenar los nombres ordenados por edad
            LinkedList<String> nombresOrdenadosLinkedList = new LinkedList<String>();

            // Agregar los nombres al ArrayList ordenados por edad
            for (Map.Entry<String, Integer> entrada : ordenarPorEdad(nombresEdades).entrySet()) {
                nombresOrdenados.add(entrada.getKey());
                nombresOrdenadosLinkedList.add(entrada.getKey());
            }

            // Imprimir los nombres ordenados por edad utilizando un ArrayList
            System.out.println("Nombres ordenados por edad (utilizando ArrayList):");
            for (String nombre : nombresOrdenados) {
                System.out.println(nombre + " (" + nombresEdades.get(nombre) + " años)");
            }

            // Imprimir los nombres ordenados por edad utilizando un LinkedList
            System.out.println("\nNombres ordenados por edad (utilizando LinkedList):");
            for (String nombre : nombresOrdenadosLinkedList) {
                System.out.println(nombre + " (" + nombresEdades.get(nombre) + " años)");
            }

        } catch (IOException e) {
            System.out.println("Error al leer el archivo: " + e.getMessage());
        } catch (NumberFormatException e) {
            System.out.println("Error al parsear la edad: " + e.getMessage());
        }
    }

    public static HashMap<String, Integer> ordenarPorEdad(HashMap<String, Integer> nombresEdades) {
        List<Map.Entry<String, Integer>> lista = new LinkedList<Map.Entry<String, Integer>>(nombresEdades.entrySet());
        Collections.sort(lista, new Comparator<Map.Entry<String, Integer>>() {
            public int compare(Map.Entry<String, Integer> o1, Map.Entry<String, Integer> o2) {
                return (o1.getValue()).compareTo(o2.getValue());
            }
        });
        HashMap<String, Integer> resultado = new LinkedHashMap<String, Integer>();
        for (Map.Entry<String, Integer> entrada : lista) {
            resultado.put(entrada.getKey(), entrada.getValue());
        }
        return resultado;
    }

}
