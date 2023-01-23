public class Abstraccion {



        public static void main(String[] args){

        }

    }

     abstract class  Carrito{
        private  String tipo;
        private String color;
        private boolean monedas;
        private String material;

        public void setTipo(String tipo) {
            this.tipo = tipo;
        }

        public String getTipo() {
            return tipo;
        }

        public String getColor() {
            return color;
        }

         abstract  public String getMaterial();

         abstract public void setMaterial(String material);

         public void setColor(String color) {
            this.color = color;
        }

        public boolean isMonedas() {
            return monedas;
        }

        public void setMonedas(boolean monedas) {
            this.monedas = monedas;
        }
    }
