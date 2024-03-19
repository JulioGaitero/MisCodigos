package C2ProgramacionConJava.M04forEach;

public class C1ForEach {

    public static void main(String[] args) {
        int edades[] = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100};

        for (int edad : edades) {
            System.out.println(edad + " años");
        }

        Persona personas[] = {new Persona("Juan"), new Persona("Pedro"), new Persona("Maria")};
        for (Persona persona : personas) {
            System.out.println(persona);
            System.out.println(persona.getNombre());
        }

    }

}
