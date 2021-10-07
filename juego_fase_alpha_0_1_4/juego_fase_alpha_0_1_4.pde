import sprites.*;
import sprites.maths.*;
import sprites.utils.*;

ArrayList<Bala> balas = new ArrayList<Bala>();
ArrayList<Balaizq> balasizq = new ArrayList<Balaizq>();
PImage escenario;

Julieta julieta1=new Julieta();

Sprite movimientoMup, movimientoMizq, movimientoMder, movimientoMgr, movimientoMgl;

StopWatch reloj;
float tiempo;

void setup() {
  size(1200, 800);
  reloj=new StopWatch();
  escenario=loadImage ("Epruebas.png");

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
}

void draw() {
  //escenario
  image(escenario, 600, 400);
  //reloj para medir los sprite
  tiempo=(float) reloj.getElapsedTime();
  S4P.updateSprites(tiempo);

  //Funciones de el primer personaje
  julieta1.mostrar();
  julieta1.movimiento();

  //movimiento balas del primer personaje
  for (Bala x : balas) {
    x.avanzarder();
    x.mostrar();
  }

  for (Balaizq x : balasizq) {
    x.avanzarizq();
    x.mostrar();
  }
}
void keyPressed() {
  //activacion funciones del primer personaje
  julieta1.teclaPresionada (keyCode);
}
void keyReleased() {
  //desactivacion funciones del primer personaje
  julieta1.teclaSuelta(keyCode);
}
