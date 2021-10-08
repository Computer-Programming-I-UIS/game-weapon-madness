
class Bala {
  int x=0;
  int y=0;                 //caracteristicas de las balas
  Bala(int px, int py) {
    x = px;
    y = py;
  }
  //muestra las balas en pantalla
  void mostrar() {
    fill(#810828);

    ellipse(x+40, y+10, 5, 5);
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
  //muestra las balas en pantalla
  void mostrar() {
    fill(#810828);

    ellipse(x-40, y+10, 5, 5);
  }
  void avanzarizq() {
    x-=4;

    //movimiento de las balas
  }
}
