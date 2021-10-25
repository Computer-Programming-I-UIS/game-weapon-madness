


class Julieta3 {
  


  boolean derecha=false, izquierda=false, arriba=false, up=false, disparoizq=false, disparoder=false, abajo=false;

  //Muestra la animacion de salto/caida/estatico
  void mostrar() {
    if (up) {
      pushMatrix() ;
      translate(x, y);
      movimientoMup.draw();
      popMatrix();
    }
  }

  void vidas() {
    image(corazon, 1000, 650);
     pushMatrix() ;
      fill(#FFFFFF);
  textSize(40);
  text(v1,1040,660);
   popMatrix();
  }

  //REVIVIR
  void revivir() {
    if (y>1200) {
      x=831;
      y=-5;
      v1-=1;
    }
  }
  void movimiento() {

    //movimientos y esprite en cada movimiento
    if (derecha) {
      pushMatrix() ;
      translate(x, y);
      movimientoMder.draw();
      popMatrix();
      x+=4;
    }
    if (izquierda) {
      pushMatrix() ;
      translate(x, y);
      movimientoMizq.draw();
      popMatrix();

      x-=4;
    }

    //sprite de los disparos

    if (disparoder) {
      pushMatrix() ;
      translate(x, y);
      movimientoMgr.draw();
      popMatrix();
    }

    if (disparoizq) {
      pushMatrix() ;
      translate(x, y);
      movimientoMgl.draw();
      popMatrix();
    }

    //gravedad y plataforma-- las plataformas van de abajo hacia arriba y de izquierda a derecha
    if ( x>=64 && x<=466 && y>=555 && y<=630) {//plataforma 1
      y=555;
      if (arriba) {
        y-=150;
      }
    } else if (x>=732 && x<=1142 && y>=557 && y<=632) {//plataforma 2
      y=557;
      if (arriba) {
        y-=150;
      }
    } else if (x>=381 && x<=472 && y>=490 && y<=550) {//plataforma 3
      y=490;
      if (arriba) {
        y-=150;
      }
    } else if (x>=732 && x<=827 && y>=487 && y<=550) {//plataforma 4
      y=487;
      if (arriba) {
        y-=150;
      }
    } else if (x>=443 && x<=749 && y>=370 && y<=435) {//plataforma 5
      y=370;
      if (arriba) {
        y-=150;
      }
    } else if (x>=131 && x<=446 && y>=267 && y<=327) {//plataforma 6
      y=267;
      if (arriba) {
        y-=150;
      }
    } else if (x>=742 && x<=1046 && y>=264 && y<=324) {//plataforma 7
      y=264;
      if (arriba) {
        y-=150;
      }
    } else if (x>=300 && x<=855 && y>=60 && y<=100) {//plataforma reaparicion 8
      y=60;
      if (arriba) {
        y-=150;
      }
    } else {

      up=true;
      y+=9.8;
    }
  }

  //comando para activar los movimientos
  void teclaPresionada (int code) {

    if (code == 45) {  //Disparar der
      Bala aux = new Bala(x, y);
      balas.add(aux);
      up=false;
      disparoder=true;
    }
    if (code == 46) {  //Disparar izq
      Balaizq aux = new Balaizq(x, y);
      balasizq.add(aux);
      up=false;
      disparoizq=true;
    }

    if (code==39) {
      derecha=true;
      up=false;
    } else {
    }

    if (code==37) {
      izquierda=true;
      up=false;
    } else {
    }

    if (code==38) {
      arriba=true;
    } else {
    }
  }

  //comandos para que se desactiven los movimeintos
  void teclaSuelta(int code) {
    if (code == 45) {
      disparoder=false;
      up=true;
    }
    if (code == 46) {
      disparoizq=false;
      up=true;
    }

    if (code==39) {
      derecha=false;
      up=true;
    }
    if (code==37) {
      izquierda=false;
      up=true;
    }
    if (code==38) {
      arriba=false;
    }
  }
}
