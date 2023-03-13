import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Vector;

public class L5Ejercicio {

    public static void main(String[] args) {

        reverse("Hola Mundo");

        // Crea un array unidimensional de Strings y recórrelo, mostrando únicamente sus valores.

        String[] ArrayStrings = {"Hola", "Que", "Tal", "Estas"};

        for (int i = 0; i < ArrayStrings.length; i++) {
            System.out.println(ArrayStrings[i]);
        }

        // Crea un array bidimensional de enteros y recórrelo, mostrando la posición y el valor de cada elemento en
        // ambas dimensiones.

        Integer[][] ArrayBi = {{0, 1}, {0, 2}, {0, 3}};

        for (int i = 0; i < ArrayBi.length; i++) {
            for (int j = 0; j < ArrayBi[i].length; j++) {
                System.out.println("Pocicion " + i + j + " :" + ArrayBi[i][j]);
            }

        }

        // Crea un "Vector" del tipo de dato que prefieras, y añádele 5 elementos. Elimina el 2o y 3er elemento
        // y muestra el resultado final.

        Vector<Integer> vector = new Vector<>();

        vector.add(0);
        vector.add(1);
        vector.add(2);
        vector.add(3);
        vector.add(4);

        vector.remove(2);
        vector.remove(3);

        for (int i : vector) {

            System.out.println("El valor actual del vector es: " + i);

        }

        // Indica cuál es el problema de utilizar un Vector con la capacidad por defecto si tuviésemos 1000 elementos
        // para ser añadidos al mismo.

        // Que haya sobredimensión del Vector.

        // Crea un ArrayList de tipo String, con 4 elementos. Cópialo en una LinkedList. Recorre ambos mostrando
        // únicamente el valor de cada elemento.

        ArrayList<String> lista = new ArrayList<String>();

        lista.add("Juan");
        lista.add("Silvia");
        lista.add("Carmen");
        lista.add("Jose");

        LinkedList<String> listaEnlazada = new LinkedList<String>();

        for (int i = 0; i < lista.size(); i++) {
            System.out.println(lista.get(i));
            listaEnlazada.add(lista.get(i));
        }

        for (int i = 0; i < listaEnlazada.size(); i++) {

            System.out.println(listaEnlazada.get(i));
        }

        // Crea un ArrayList de tipo int, y, utilizando un bucle rellénalo con elementos 1..10. A continuación,
        // con otro bucle, recórrelo y elimina los numeros pares. Por último, vuelve a recorrerlo y muestra el
        // ArrayList final. Si te atreves, puedes hacerlo en menos pasos, siempre
        // y cuando cumplas el primer "for" de relleno.

        ArrayList<Integer> numeros = new ArrayList<Integer>();

        for (int i = 0; i < 10; i++) {

            numeros.add(i + 1);

        }

        for (int i = 0; i < numeros.size(); i++) {

            if (numeros.get(i) % 2 == 0) {
                numeros.remove(i);
            }

        }

        for (int i = 0; i < numeros.size(); i++) {

            System.out.println(numeros.get(i));

        }

        try {
            DividePorCero(10, 2);
        } catch (ArithmeticException e) {
            System.out.println("Esto no puede hacerse");
        }finally {
            System.out.println("Demo de código");
        }



    }

    //Escribe el código que devuelva una cadena al revés. Por ejemplo, la cadena "hola mundo", debe retornar "odnum aloh".
    public static String reverse(String texto) {

        String resultado = "";
        for (int i = texto.length() - 1; i >= 0; i--) {
            resultado += texto.charAt(i);
        }

        return resultado;
    }

    //Crea una función DividePorCero. Esta, debe generar una excepción ("throws") a su llamante del tipo
    // ArithmeticException que será capturada por su llamante (desde "main", por ejemplo). Si se dispara la excepción,
    // mostraremos el mensaje "Esto no puede hacerse". Finalmente, mostraremos en cualquier caso: "Demo de código".

    public static void DividePorCero(int numero1, int numero2) throws ArithmeticException {
        if (numero2 == 0) {
            throw new ArithmeticException("No se puede dividir por cero");
        } else {
            int resultado = numero1 / numero2;
            System.out.println("El resultado de la división es: " + resultado);
        }
    }

    // Utilizando InputStream y PrintStream, crea una función que reciba dos parámetros: "fileIn" y "fileOut".
    // La tarea de la función será realizar la copia del fichero dado en el parámetro "fileIn" al fichero dado en
    // "fileOut".

    public static void copiar(String fileIn, String fileOut) throws IOException {

        FileInputStream inputStream = null;
        PrintStream outputStream = null;

        try {
            inputStream = new FileInputStream(fileIn);
            outputStream = new PrintStream(new FileOutputStream(fileOut));

            int c;
            while ((c = inputStream.read()) != -1) {
                outputStream.write(c);
            }
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
            if (outputStream != null) {
                outputStream.close();
            }
        }
    }

}
