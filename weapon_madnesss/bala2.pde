class Bala2 {
  int a=0;
  int b=0;                 //caracteristicas de las balas

  Bala2(int pa, int pb) {
    a = pa;
    b= pb;
  }

  void mostrar() {
    fill(#055DF2);


    ellipse(a+40, b+10, 5, 5);
  }
  void avanzarder() {

    a+=4;                 //movimiento de las balas
  }
}

class Balaizq2 {
  int a = 0;
  int b = 0;
  Balaizq2(int pa, int pb) {
    a = pa;
    b = pb;
  }
  void mostrar() {
    fill(#055DF2);
    ellipse(a-40, b+10, 5, 5);
  }
  void avanzarizq() {
    a-=4;
    //movimiento de las balas
  }
}
