package C2ProgramacionConJava.M06Modificadores;

import C2ProgramacionConJava.M06Modificadores.Paquete1.Clase1Public;

public class TestPublic {

    public static void main(String[] args) {

        Clase1Public clase1 = new Clase1Public();
        System.out.println(clase1);
        System.out.println(clase1.nombrePublico);
        clase1.metodoPublico();


    }

}
