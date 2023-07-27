package Datos;

public class Usuarios {

    private int numUsuario;
    private int numCuenta;

    public Usuarios(int numUsuario, int numCuenta) {
        this.numUsuario = numUsuario;
        this.numCuenta = numCuenta;
    }

    public int getNumUsuario() {
        return numUsuario;
    }

    public void setNumUsuario(int numUsuario) {
        this.numUsuario = numUsuario;
    }

    public int getNumCuenta() {
        return numCuenta;
    }

    public void setNumCuenta(int numCuenta) {
        this.numCuenta = numCuenta;
    }

    @Override
    public String toString() {
        return "Usuarios{" +
                "numUsuario=" + numUsuario +
                ", numCuenta=" + numCuenta +
                '}';
    }
}
