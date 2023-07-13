package C1FundamentosProgramacion.M20Arrays;

public class TestArraysObject {

    public static void main(String[] args) {
        Persona personas[] = new Persona[5];

        personas[0] = new Persona("Adrian");
        personas[1] = new Persona("Sara");
        personas[2] = new Persona("Jose");
        personas[3] = new Persona("Maria");
        personas[4] = new Persona("Juan");

        for (int i = 0; i < personas.length; i++) {
            System.out.println("Posicion del array: " + i);
            System.out.println("Nombre: " + personas[i].getNombre());
            System.out.println(personas[i]);
            System.out.println(" ");
        }

    }

}
