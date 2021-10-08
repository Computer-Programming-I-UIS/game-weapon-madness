
class menuP {

  int pantallaMstrar = 0;
  int x =490;
  int y =358;                                          //variables para botones start,controls, y exit
  int w =195;
  int h =70;
  PImage menu;


  menuP() {
    menu = loadImage("menu1.png");             //muestra menu principal
  }

  void mostrarMenu() {

    image(menu, 0, 0);
  }


  int saberPantallaSig() {
    int nextPantalla = 0;

    if ((mousePressed)&&(mouseX > x)&&(mouseX< x + w) &&  (mouseY > y+70)&&(mouseY< y+70 + h)) {
      fill(0);
      nextPantalla = 1;
    } else {
      fill(256);                                                   //boton start
    }
    noFill();
    noStroke();
    rect(x, y+70, w, h);


    if ((mousePressed)&&(mouseX > x)&&(mouseX< x + w) &&  (mouseY > y+102+70)&&(mouseY< y+102+70 + h)) {
      fill(0);

      nextPantalla = 2;  // Boton controles
    }
    rect(x, y+102+70, w, h);



    if ((mousePressed)&&(mouseX > x+3)&&(mouseX< x+3 + w-8) &&  (mouseY > y+207+70)&&(mouseY< y+207+70 + h)) {
      fill(0);
      nextPantalla = 4;
    } else {
      fill(256);
    }
    noFill();                                                          //boton exit
    noStroke();
    rect(x+3, y+207+70, w-8, h);


    if ((mousePressed)&&(mouseX > x+520)&&(mouseX< x+520 + w-65) &&  (mouseY > y+295+70)&&(mouseY< y+295+70 + h-25)) {
      fill(0);
      nextPantalla = 3;
    } else {
      fill(256);
    }
    noFill();                                                             //boton credits
    noStroke();
    rect(x+520, y+295+70, w-65, h-25);

    return nextPantalla;
  }
}
