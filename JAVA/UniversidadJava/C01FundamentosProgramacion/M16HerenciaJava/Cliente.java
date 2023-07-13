package C1FundamentosProgramacion.M16HerenciaJava;
import java.util.Date;
public class Cliente extends Persona {

    private  int idCliente = 0;
    private Date fechaRegistro;
    private boolean vip;
    private static int contadorCliente = 0;

    public Cliente(String nombre, String direccion, char genero, int edad, Date fechaRegistro, boolean vip) {
        super(nombre, direccion, genero, edad);
        this.fechaRegistro = fechaRegistro;
        this.vip = vip;
        this.idCliente = ++Cliente.contadorCliente;
    }

    public Date getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(Date fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public boolean isVip() {
        return vip;
    }

    public void setVip(boolean vip) {
        this.vip = vip;
    }

    @Override
    public String toString() {
        return "Cliente{" +
                "idCliente=" + idCliente +
                ", fechaRegistro=" + fechaRegistro +
                ", vip=" + vip +
                ", nombre='" + nombre + '\'' +
                ", direccion='" + direccion + '\'' +
                ", genero=" + genero +
                ", edad=" + edad +
                '}';
    }
}
