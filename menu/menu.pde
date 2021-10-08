
controles controles1;
menuP menu1;
creditos creditos1;

int pantalla = 0;
//PImage menu;

void setup() {
  size(1200, 800);
  menu1 = new menuP();
  controles1 = new controles();
  creditos1 = new creditos();
  //menu = loadImage("menu1.png");
}
void draw() {

  switch(pantalla) {
  case 0:
    menu1.mostrarMenu();                    //muestra menú principal
    break;
  case 1:  //Start

    break;

  case 2:  //Controles
    controles1.mostrarControles();
    break;

  case 3:  //Creditos
    creditos1.mostrarCreditos();
    break;

  case 4:  //Salir
    exit();
    break;
  default:

    break;
  }

  //controles1.mostrarControles();
  //image(menu1.menu, 0, 0);
}

void mousePressed() {

  switch(pantalla) {
  case 0:
    pantalla = menu1.saberPantallaSig();                    //muestra menú principal
    break;
  case 1:  //Start

    break;

  case 2:  //Controles
    pantalla = controles1.saberPantallaSig();
    break;

  case 3:  //Creditos
    pantalla = creditos1.saberPantallaSig();
    break;

  default:

    break;
  }
}
