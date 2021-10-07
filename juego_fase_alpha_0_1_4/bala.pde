
class Bala {
  int x=0;
  int y=0;                 //caracteristicas de las balas
  Bala(int px, int py) {
    x = px;
    y = py;
  }
  void mostrar() {
    ellipse(x+40, y+10, 5, 5);     //muestra las balas en pantalla
  }
  void avanzarder() {
    x+=4;                 //movimiento de las balas
  }
}

class Balaizq {
  int x = 0;
  int y = 0;
  Balaizq(int px, int py) {
    x = px;
    y = py;
  }
  void mostrar() {
    ellipse(x-40, y+10, 5, 5);     //muestra las balas en pantalla
  }
  void avanzarizq() {
    x-=4;
    //movimiento de las balas
  }
}
