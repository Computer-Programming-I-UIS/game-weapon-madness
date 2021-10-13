class juego {
  int x1=1030, y1=25, w=148, h=82;

  void inicioJuego() {

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
        a+=35;
         b+=1;
      }
    }

    for (Balaizq laBalaizq : balasizq) {
      if ( laBalaizq.y<b+40 && laBalaizq.y>b-40 && laBalaizq.x>a-10 && laBalaizq.x<a+10 ) {
        a-=35;
         b+=1;
      }
    }
    //colisiones p2
    for (Bala2 laBala2 : balas2) {
      if ( laBala2.b<y+40 && laBala2.b>y-40 && laBala2.a>x-10 &&laBala2.a<x+10 ) {
        x+=35;
         y+=1;
      }
    }
    for (Balaizq2 laBalaizq2 : balasizq2) {
      if ( laBalaizq2.b<y+40 && laBalaizq2.b>y-40 && laBalaizq2.a>x-10 && laBalaizq2.a<x+10 ) {
        x-=35d;
        y+=1;
      }
    }
  }
}
