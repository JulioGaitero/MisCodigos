package C1FundamentosProgramacion.M17SobrecargaConstructoresMetodos;

public class C1ConstructoresAnimalPrueba {

    public static void main(String[] args) {
        C1ConstrutoresAnimal a = new C1ConstrutoresAnimal("Gato");
        C1ConstrutoresAnimal b = new C1ConstrutoresAnimal("Homer", "San Bernaardo", "Perro");
        C1ConstrutoresAnimal c = new C1ConstrutoresAnimal("Rambo", "San Bernaardo", "Perro");

        System.out.println(a);
        System.out.println(b);
        System.out.println(c);
    }

}
