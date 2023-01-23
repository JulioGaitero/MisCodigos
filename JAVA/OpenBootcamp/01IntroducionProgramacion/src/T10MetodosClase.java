import java.awt.*;

public class T10MetodosClase {
    public static void main(String[] args){

        cuarzo Cuarzo = new cuarzo();
        pesoAtomico(Cuarzo);
        amatista Amatista = new amatista();
        pesoAtomico(Amatista);
    }

    public static void pesoAtomico(mineral Mineral){
        Mineral.pesoAtomico();
    }
}

interface mineral{
     void pesoAtomico();
     void masaTotal();
}

class cuarzo implements mineral {

    public void pesoAtomico() {
        System.out.println("pesoAtomico cuarzo");
    }

    public void masaTotal() {
        System.out.println("masaTotal cuarzo");
    }
}

class amatista implements mineral{

    public void pesoAtomico() {
        System.out.println("pesoAtomico amatista");
    }

    public void masaTotal() {
        System.out.println("masaTotal amatista");
    }
}
