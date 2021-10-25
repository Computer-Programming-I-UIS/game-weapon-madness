

class Romeo3 {
  


  boolean derecha=false, izquierda=false, arriba=false, up=false, disparoizq=false, disparoder=false, abajo=false;

  //Muestra la animacion de salto/caida/estatico
  void mostrar() {
    if (up) {
      pushMatrix() ;
      translate(a, b);
      movimientoJup.draw();
      popMatrix();
    }
  }

  void vidas() {
    image(corazon, 100, 650);
     pushMatrix() ;
 fill(#FFFFFF);
  textSize(40);
  text(v2,140,660);
   popMatrix();
  }


  //REVIVIR
  void revivir() {
    if (b>1200) {
      a=322;
      b=-3;
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


    ///gravedad y plataforma-- las plataformas van de abajo hacia arriba y de izquierda a derecha
    //gravedad y plataforma-- las plataformas van de abajo hacia arriba y de izquierda a derecha
    if ( a>=64 && a<=466 && b>=565 && b<=630) {//plataforma 1
      b=565;
      if (arriba) {
        b-=150;
      }
    } else if (a>=732 && a<=1142 && b>=567 && b<=632) {//plataforma 2
      b=567;
      if (arriba) {
        b-=150;
      }
    } else if (a>=381 && a<=472 && b>=500 && b<=550) {//plataforma 3
      b=500;
      if (arriba) {
        b-=150;
      }
    } else if (a>=732 && a<=827 && b>=497 && b<=550) {//plataforma 4
      b=497;
      if (arriba) {
        b-=150;
      }
    } else if (a>=443 && a<=749 && b>=380 && b<=435) {//plataforma 5
      b=380;
      if (arriba) {
        b-=150;
      }
    } else if (a>=131 && a<=446 && b>=277 && b<=327) {//plataforma 6
      b=277;
      if (arriba) {
        b-=150;
      }
    } else if (a>=742 && a<=1046 && b>=274 && b<=324) {//plataforma 7
      b=274;
      if (arriba) {
        b-=150;
      }
    } else if (a>=300 && a<=855 && b>=70 && b<=107) {//plataforma reaparicion 8
      b=70;
      if (arriba) {
        b-=150;
      }
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
