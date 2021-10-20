class creditos {

  int x = 964;
  int y = 574;                                                  //mostrar creditos
  int w = 186;
  int h = 64;
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
