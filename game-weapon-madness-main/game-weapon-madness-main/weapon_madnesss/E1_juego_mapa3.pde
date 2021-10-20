class juego3 {
  

  void inicioJuego() {

    //escenario
    image(escenario3, 600, 350);
    //reloj para medir los sprite
    tiempo=(float) reloj.getElapsedTime();
    S4P.updateSprites(tiempo);


    //Funciones de el primer personaje
    julieta3.mostrar();
    julieta3.movimiento();
    julieta3.revivir();
    julieta3.vidas();

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
    romeo3.mostrar();
    romeo3.movimiento();
    romeo3.revivir();
    romeo3.vidas();

    //colisiones balas p1 , derecha y izquierda
    for (Bala laBala : balas) {       
      if ( laBala.y<b+40 && laBala.y>b-40 && laBala.x>a-10 &&laBala.x<a+10 ) {
        a+=100;
        b+=1;
        laBala.x=3000;
      }
    }

    for (Balaizq laBalaizq : balasizq) {
      if ( laBalaizq.y<b+40 && laBalaizq.y>b-40 && laBalaizq.x>a-10 && laBalaizq.x<a+10 ) {
        a-=100;
        b+=1;
        laBalaizq.x=-3000;
      }
    }
    //colisiones p2, derecha y izquierda
    for (Bala2 laBala2 : balas2) {
      if ( laBala2.b<y+40 && laBala2.b>y-40 && laBala2.a>x-10 &&laBala2.a<x+10 ) {
        x+=100;
        y+=1;
        laBala2.a=3000;
      }
    }
    for (Balaizq2 laBalaizq2 : balasizq2) {
      if ( laBalaizq2.b<y+40 && laBalaizq2.b>y-40 && laBalaizq2.a>x-10 && laBalaizq2.a<x+10 ) {
        x-=100;
        y+=1;
        laBalaizq2.a=3000;
      }
    }
  }
}
