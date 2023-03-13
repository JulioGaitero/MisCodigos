public class L2Arrays {

    public static void main(String[] args) {

        int arrayUno[] = new int[6];
        int arrayDos[] = {0,1,2,3,4,5};

        arrayUno[0] = 0;
        arrayUno[1] = 1;
        arrayUno[2] = 2;
        arrayUno[3] = 3;
        arrayUno[4] = 4;
        arrayUno[5] = 5;

        System.out.println("Array Uno");
        System.out.println("Longitud del array " +arrayUno.length);

        for (int i : arrayUno) {
            System.out.println(arrayUno[i]);
        }

        for(int i =0; i < arrayUno.length; i++ ){
            System.out.println(arrayUno[i]);
        }

        System.out.println("Array Dos");
        System.out.println("Longitud del array " +arrayDos.length);

        int ultimoNumero = 0;

        for (int i : arrayDos) {
            System.out.println(arrayUno[i]);
            ultimoNumero = i;
        }

        System.out.println("El ultimo numero es: " +ultimoNumero);

        int contador = 0;

        while (contador<arrayDos.length){
            System.out.println(arrayDos[contador]);
            contador++;
        }

        int arrayBidi[][] = new int[3][3];

        arrayBidi[0][0] = 0;
        arrayBidi[0][1] = 1;
        arrayBidi[0][2] = 2;

        arrayBidi[1][0] = 0;
        arrayBidi[1][1] = 1;
        arrayBidi[1][2] = 2;

        arrayBidi[2][0] = 0;
        arrayBidi[2][1] = 1;
        arrayBidi[2][2] = 2;

        for (int i = 0; i < arrayBidi.length; i++) {
            for (int j = 0; j < arrayBidi[i].length; j++) {
                System.out.println("Estoy en i: "+i + " j: "+j);
                System.out.println(arrayBidi[i][j]);
            }
        }

        int arrayBidiDos[][] = {{1,2,3},{4,5,6}};

        for (int i = 0; i < arrayBidi.length; i++) {
            for (int j = 0; j < arrayBidiDos[i].length; j++) {
                System.out.println("Estoy en i: "+i + " j: "+j);
                System.out.println(arrayBidiDos[i][j]);
            }
        }



    }

}
