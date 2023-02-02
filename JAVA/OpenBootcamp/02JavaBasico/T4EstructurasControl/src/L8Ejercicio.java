public class L8Ejercicio {
    public static void main(String[] args) {
        String[] nombres = {"Nerea", "Julio", "Sara"};
        String nombresConca = "";

        for (String nombre : nombres) {
            nombresConca += nombre + " ";
        }
        System.out.println(nombresConca);
        nombresConca = "";
        for (String nombre : nombres) {

            nombresConca = nombresConca.concat(nombre) + " ";

        }
        System.out.println(nombresConca);
    }
}
