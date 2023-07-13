package C1FundamentosProgramacion.M17SobrecargaConstructoresMetodos;

public class C1ConstrutoresAnimal {

    private String nombre;
    private String raza;
    private String especie;

    private  int idAnimal;

    private static int contadorAnimal = 0;

    public C1ConstrutoresAnimal(String nombre, String raza, String especie) {
        this();
        this.nombre = nombre;
        this.raza = raza;
        this.especie = especie;
    }

    public C1ConstrutoresAnimal(String nombre) {
        this();
        this.nombre = nombre;
    }

    public C1ConstrutoresAnimal() {
        this.idAnimal = C1ConstrutoresAnimal.contadorAnimal++;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRaza() {
        return raza;
    }

    public void setRaza(String raza) {
        this.raza = raza;
    }

    public String getEspecie() {
        return especie;
    }

    public void setEspecie(String especie) {
        this.especie = especie;
    }

    @Override
    public String toString() {
        return "Animal{" +
                "nombre='" + nombre + '\'' +
                ", raza='" + raza + '\'' +
                ", especie='" + especie + '\'' +
                ", idAnimal=" + idAnimal +
                '}';
    }
}
