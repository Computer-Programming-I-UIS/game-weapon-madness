import sprites.*;
import sprites.maths.*;
import sprites.utils.*;

ArrayList<Bala> balas = new ArrayList<Bala>();
ArrayList<Balaizq> balasizq = new ArrayList<Balaizq>();

ArrayList<Bala2> balas2 = new ArrayList<Bala2>();
ArrayList<Balaizq2> balasizq2 = new ArrayList<Balaizq2>();

PImage escenario;

Julieta julieta1=new Julieta();
Romeo romeo1=new Romeo();

Sprite movimientoMup, movimientoMizq, movimientoMder, movimientoMgr, movimientoMgl;
Sprite movimientoJup, movimientoJizq, movimientoJder, movimientoJgr, movimientoJgl;

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
  julieta1.revivir();

  //movimiento balas del primer personaje

  for (Bala x : balas) {
    x.avanzarder();
    x.mostrar();
  }

  for (Balaizq x : balasizq) {
    x.avanzarizq();
    x.mostrar();
  }

  //movimiento balas del segundo personaje

  for (Bala2 a : balas2) {
    a.avanzarder();
    a.mostrar();
  }

  for (Balaizq2 a : balasizq2) {
    a.avanzarizq();
    a.mostrar();
  }


  //funciones de el segundo personaje
  romeo1.mostrar();
  romeo1.movimiento();
  romeo1.revivir();

  //colisiones balas p1
  for (Bala laBala : balas) {
    if ( laBala.y<b+40 && laBala.y>b-40 && laBala.x>a-10 &&laBala.x<a+10 ) {
      a+=30;
    }
  }

  for (Balaizq laBalaizq : balasizq) {
    if ( laBalaizq.y<b+40 && laBalaizq.y>b-40 && laBalaizq.x>a-10 && laBalaizq.x<a+10 ) {
      a-=15;
    }
  }
  //colisiones p2
  for (Bala2 laBala2 : balas2) {
    if ( laBala2.b<y+40 && laBala2.b>y-40 && laBala2.a>x-10 &&laBala2.a<x+10 ) {
      x+=15;
    }
  }
  for (Balaizq2 laBalaizq2 : balasizq2) {
    if ( laBalaizq2.b<y+40 && laBalaizq2.b>y-40 && laBalaizq2.a>x-10 && laBalaizq2.a<x+10 ) {
      x-=15;
    }
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

  //desacticacion funciones del segundo personaje
  romeo1.teclaSuelta(keyCode);
}
