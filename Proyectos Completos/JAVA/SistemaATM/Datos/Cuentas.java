package Datos;

public class Cuentas {

    public int numeroPin;
    private int numeroCuenta;
    private double saldo;
    private boolean estado;

    public Cuentas(int numeroCuenta, int numeroPin, double saldo, boolean estado) {
        this.numeroCuenta = numeroCuenta;
        this.numeroPin = numeroPin;
        this.saldo = saldo;
        this.estado = estado;
    }

    public int getNumeroCuenta() {
        return numeroCuenta;
    }

    public void setNumeroCuenta(int numeroCuenta) {
        this.numeroCuenta = numeroCuenta;
    }

    public int getPin() {
        return numeroPin;
    }

    public void setPin(int pin) {
        this.numeroPin = pin;
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    @Override
    public String toString() {
        return "Cuentas{" +
                "numeroCuenta=" + numeroCuenta +
                ", pin=" + numeroPin +
                ", saldo=" + saldo +
                ", estado=" + estado +
                '}';
    }
}
