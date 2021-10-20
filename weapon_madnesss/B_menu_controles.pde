class controles {

  int x = 490;                                  //muestra menu de controles
  int y = 35;
  int w = 216;
  int h = 77;
  PImage controles;

  controles() {
    controles = loadImage("controles.png");
  }


  void mostrarControles() {

    image(controles, 0, 0);
  }
  int saberPantallaSig() {
    int nextPantalla = 2;

    if ((mousePressed)&&(mouseX > x)&&(mouseX< x + w) &&  (mouseY > y)&&(mouseY< y + h)) {

      nextPantalla = 0;                                     //boton back
    }
    rect(x, y, w, h);
    return nextPantalla;
  }
}
