int x=610, y=12, s1, s2;


class Julieta {


  boolean derecha=false, izquierda=false, arriba=false, up=false, disparoizq=false, disparoder=false;

  //Muestra la animacion de salto/caida/estatico
  void mostrar() {
    if (up) {
      pushMatrix() ;
      translate(x, y);
      movimientoMup.draw();
      popMatrix();
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
    if (arriba) {

      y-=9.8*2;
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

    //gravedad y plataformas
    if ( x>=130 && x<=1040 && y>=561 && y<=571) {
      y+=0;
    } else if (x>=378 && x<=853 && y>=443 && y<=453) {
      y+=0;
    } else if (x>=192 && x<=422 && y>=335 && y<=345) {
      y+=0;
    } else if (x>=804 & x<=1041 && y>=335 && y<=345) {//
      y+=0;
    } else if (x>=378 && x<=853 && y>=218 && y<=228) {//
      y+=0;
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
