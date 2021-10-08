class creditos {

  int x = 941;
  int y = 681;                                                  //mostrar creditos
  int w = 216;
  int h = 77;
  PImage creditos;

  creditos() {
    creditos = loadImage("creditos.jpg");
  }

  void mostrarCreditos() {

    image(creditos, 0, 0);
  }
  int saberPantallaSig() {
    int nextPantalla = 3;

    if ((mousePressed)&&(mouseX > x)&&(mouseX< x + w) &&  (mouseY > y)&&(mouseY< y + h)) {

      nextPantalla = 0;
    }                                                       //boton back
    rect(x, y, w, h);
    return nextPantalla;
  }
}
