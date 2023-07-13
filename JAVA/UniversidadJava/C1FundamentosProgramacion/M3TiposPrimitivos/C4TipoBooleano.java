package C1FundamentosProgramacion.M3TiposPrimitivos;

public class C4TipoBooleano {

    public static void main(String[] args) {

        boolean variableBooleano = false;
        System.out.println("El valor de la variable es: " +variableBooleano);

        if (variableBooleano) {
            System.out.println("El valor de la variable es verdadero");
        }else {
            System.out.println("El valor de la variable es falso");
        }

        int edad = 10;
        var esAduto = edad >= 18;

        System.out.println(esAduto);

        if (esAduto) {
            System.out.println("Es aduto");
        }else {
            System.out.println("No es aduto");
        }

    }

}
