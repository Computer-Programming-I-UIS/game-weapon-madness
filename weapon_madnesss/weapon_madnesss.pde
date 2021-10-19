

//import librerías
import ddf.minim.*;
import sprites.*;
import sprites.maths.*;
import sprites.utils.*;



//-------------------------------------------------------------------------------------
//carga de variables y objetos del juego
ArrayList<Bala> balas = new ArrayList<Bala>();
ArrayList<Balaizq> balasizq = new ArrayList<Balaizq>();

ArrayList<Bala2> balas2 = new ArrayList<Bala2>();
ArrayList<Balaizq2> balasizq2 = new ArrayList<Balaizq2>();

PImage escenario;

Julieta julieta1=new Julieta();
Romeo romeo1=new Romeo();

Sprite movimientoMup, movimientoMizq, movimientoMder, movimientoMgr, movimientoMgl;
Sprite movimientoJup, movimientoJizq, movimientoJder, movimientoJgr, movimientoJgl;

Minim minim;
AudioPlayer player;

StopWatch reloj;
float tiempo;
//-----------------------------------------------------------------------------
controles controles1;
menuP menu1;
creditos creditos1;
juego juego1;

int pantalla = 0; //PImage menu;


void setup() {
  size(1200, 700);
  //setup juego
  reloj=new StopWatch();
  escenario=loadImage ("Epruebas.png");

  //musica de fondo
  minim=new Minim(this);
  player= minim.loadFile("xd.mp3");

  //carga de sprite del primer personaje
  movimientoMup=new Sprite(this, "spritesheetMo.png", 5, 5, 0);
  movimientoMup.setFrameSequence(20, 24, 0.1);
  movimientoMizq=new Sprite(this, "spritesheetMo.png", 5, 5, 0);
  movimientoMizq.setFrameSequence(5, 8, 0.1);
  movimientoMder=new Sprite(this, "spritesheetMo.png", 5, 5, 0);
  movimientoMder.setFrameSequence(0, 3, 0.1);
  movimientoMgr=new Sprite(this, "spritesheetMo.png", 5, 5, 0);
  movimientoMgr.setFrameSequence(10, 11, 0.1);
  movimientoMgl=new Sprite(this, "spritesheetMo.png", 5, 5, 0);
  movimientoMgl.setFrameSequence(17, 18, 0.1);

  //carga de sprite del segundo personaje
  movimientoJizq=new Sprite(this, "spritesheetJu1.png", 4, 3, 0);
  movimientoJizq.setFrameSequence(8, 11, 0.1);
  movimientoJder=new Sprite(this, "spritesheetJu1.png", 4, 3, 0);
  movimientoJder.setFrameSequence(0, 3, 0.1);
  movimientoJup=new Sprite(this, "spritesheetJu1.png", 4, 3, 0);
  movimientoJup.setFrameSequence(4, 5, 0.5);
  movimientoJgr=new Sprite(this, "spritesheetJu2.png", 4, 3, 0);
  movimientoJgr.setFrameSequence(0, 3, 0.1);
  movimientoJgl=new Sprite(this, "spritesheetJu2.png", 4, 3, 0);
  movimientoJgl.setFrameSequence(4, 7, 0.1);
  //---------------------------------------------------------------------------------
  menu1 = new menuP();
  controles1 = new controles();
  creditos1 = new creditos();
  juego1 = new juego();
  //menu = loadImage("menu1.png");
}

void draw() {

  //musica
  player.play();

  switch(pantalla) {
  case 0:
    menu1.mostrarMenu();                    //muestra menú principal
    break;
  case 1:  //inicio juego mapa 1
    if (v1>=1 &&v2>=1) {
      juego1.inicioJuego();
    } else if (v1<1 ||v2<1) {
      pushMatrix() ;
      translate(600, 400);
      creditos1.mostrarCreditos();
      popMatrix();
    }

    fill(#050101);
    rect(1030, 25, 148, 82);
    fill(#FCFCFC);
    textSize(50);
    text("exit", 1050, 70);

    if ((mousePressed)&&(mouseX > 1030)&&(mouseX< 1030 + 148) &&  (mouseY > 25)&&(mouseY< 25+ 82)) {
      exit();
    }

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
void keyPressed() {

  //activacion funciones del primer personaje
  julieta1.teclaPresionada (keyCode);


  //activacion funciones del segundo personaje
  romeo1.teclaPresionada(keyCode);
}
void keyReleased() {
  //desactivacion funciones del primer personaje
  julieta1.teclaSuelta(keyCode);

  //desactivacion funciones del segundo personaje
  romeo1.teclaSuelta(keyCode);
}
