package C2ProgramacionConJava.M13Interfaces;

public class Test {

    public static void main(String[] args) {
        ImplementacionOracle oracle = new ImplementacionOracle();
        oracle.listar();
        oracle.insertar();

        ImplentacionMySQL mysql = new ImplentacionMySQL();
        mysql.listar();
        mysql.insertar();

        AccesoDatos datos = new ImplementacionOracle();

        imprimir(datos);

        datos.insertar();

        datos  = new ImplentacionMySQL();

        datos.insertar();

        imprimir(datos);
    }

    public static void imprimir(AccesoDatos datos){
        datos.listar();
    }
}
