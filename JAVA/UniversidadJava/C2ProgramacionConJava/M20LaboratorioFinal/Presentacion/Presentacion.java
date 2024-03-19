package C2ProgramacionConJava.M20LaboratorioFinal.Presentacion;

import C2ProgramacionConJava.M20LaboratorioFinal.Catalogo.Catalogo;
import C2ProgramacionConJava.M20LaboratorioFinal.Catalogo.CatalogoImp;

import java.util.Scanner;

public class Presentacion {

    public static void main(String[] args) {
        int opcion = -1;
        Scanner entradaTeclado = new Scanner(System.in);
        CatalogoImp catalogo = new CatalogoImp();

        while (opcion != 0) {

            System.out.println("MENU\n");
            System.out.println("1. Iniciar Catalogo");
            System.out.println("2. Agregar pelicula");
            System.out.println("3. Listar peliculas");
            System.out.println("4. Buscar pelicula");
            System.out.println("0. Salir");

            opcion = entradaTeclado.nextInt();

            switch (opcion) {
                case 1:
                    catalogo.iniciarCatalogo();
                    break;
                case 2:
                    System.out.println("Nombre de la pelicula: ");
                    String nombre = entradaTeclado.next();
                    catalogo.agregar(nombre);
                    break;
                case 3:
                    catalogo.listarPeliculas();
                    break;
                case 4:
                    System.out.println("Nombre de la pelicula: ");
                    nombre = entradaTeclado.next();
                    catalogo.buscarPelicula(nombre);
                    break;
                case 0:
                    System.out.println("Adios");
                    break;
                default:
                    System.out.println("Opcion no valida");
            }

        }
    }
}
