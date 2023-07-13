package C1FundamentosProgramacion.M16HerenciaJava;

import java.util.Date;

public class TestHerencia {

    public static void main(String[] args) {
        Empleado empleado1 = new Empleado();
        System.out.println(empleado1);

        Empleado empleado2 = new Empleado("Adrian", 2323.332);
        System.out.println(empleado2);

        Cliente cliente = new Cliente("Marco","Avellaneda",'F',23, new Date(),true);
        System.out.println(cliente);
    }

}
