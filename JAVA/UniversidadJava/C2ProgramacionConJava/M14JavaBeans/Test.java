package C2ProgramacionConJava.M14JavaBeans;

public class Test {

    public static void main(String[] args) {
        PersonaBean personaBean = new PersonaBean("Juan", "Perez");
        System.out.println(personaBean);

        PersonaBean personaBean2 = new PersonaBean();
        personaBean2.setNombre("Pedro");
        personaBean2.setApellido("Gonzalez");
        System.out.println(personaBean2);
        System.out.println(personaBean2.getNombre());
        System.out.println(personaBean2.getApellido());
    }
}
