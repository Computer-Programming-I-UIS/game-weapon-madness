int a=610, b=12,v2=3;

class Romeo {


  boolean derecha=false, izquierda=false, arriba=false, up=false, disparoizq=false, disparoder=false;

  //Muestra la animacion de salto/caida/estatico
  void mostrar() {
    if (up) {
      pushMatrix() ;
      translate(a, b);
      movimientoJup.draw();
      popMatrix();
    }
  }
  void revivir() {
    if (b>1200) {
      a=610;
      b=12;
      v2-=1;
    }
  }
  void movimiento() {
    //movimientos y esprite en cada movimiento
    if (derecha) {
      pushMatrix() ;
      translate(a, b);
      movimientoJder.draw();
      popMatrix();
      a+=4;
    }
    if (izquierda) {
      pushMatrix() ;
      translate(a, b);
      movimientoJizq.draw();
      popMatrix();

      a-=4;
    }

    if (disparoder) {
      pushMatrix() ;
      translate(a, b);
      movimientoJgr.draw();
      popMatrix();
    }
    if (disparoizq) {
      pushMatrix() ;
      translate(a, b);
      movimientoJgl.draw();
      popMatrix();
    }


    //gravedad y plataformas
    if ( a>=130 && a<=1040 && b>=561 && b<=571) {
      b+=0;
      if (arriba) {

        b-=150;
      }
    } else if (a>=378 && a<=853 && b>=443 && b<=453) {
      b+=0;
      if (arriba) {

        b-=150;
      }
    } else if (a>=192 && a<=422 && b>=335 && b<=345) {
      b+=0;
      if (arriba) {

        b-=150;
      }
    } else if (a>=804 & a<=1041 && b>=335 && b<=345) {
      b+=0;
      if (arriba) {

        b-=150;
      }
    } else if (a>=378 && a<=853 && b>=218 && b<=228) {
      b+=0;
    } else {
      up=true;
      b+=9.8;
    }
  }

  //comando para activar los movimientos
  void teclaPresionada (int code) {

    if (code == 72) {  //Disparar der

      Bala2 aux = new Bala2(a, b);
      balas2.add(aux);
      up=false;
      disparoder=true;
    }
    if (code == 71) {  //Disparar izq

      Balaizq2 aux = new Balaizq2(a, b);
      balasizq2.add(aux);
      up=false;
      disparoizq=true;
    }


    if (code==68) {
      derecha=true;
      up=false;
    } else {
    }

    if (code==65) {
      izquierda=true;
      up=false;
    } else {
    }

    if (code==87) {
      arriba=true;
    } else {
    }
  }

  //comandos para que se desactiven los movimeintos
  void teclaSuelta(int code) {

    if (code == 72) {
      disparoder=false;
      up=true;
    }
    if (code == 71) {
      disparoizq=false;
      up=true;
    }

    if (code==68) {
      derecha=false;
      up=true;
    }
    if (code==65) {
      izquierda=false;
      up=true;
    }
    if (code==87) {
      arriba=false;
    }
  }
}
