

class Romeo2 {
  


  boolean derecha=false, izquierda=false, arriba=false, up=false, disparoizq=false, disparoder=false,abajo=false;

  //Muestra la animacion de salto/caida/estatico
  void mostrar() {
    if (up) {
      pushMatrix() ;
      translate(a, b);
      movimientoJup.draw();
      popMatrix();
    }
  }
  
  void vidas(){
  image(corazon,100,650);
   pushMatrix() ;
    fill(#FFFFFF);
  textSize(40);
  text(v2,140,660);
   popMatrix();
  }
  
  
  //REVIVIR
  void revivir() {
    if (b>1200) {
      a=45;
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


    //gravedad y plataformas
    if (  a>=64 && a<=509 && b>=495 && b<=557) {  //plataforma 1
      b=495;
      if (arriba) {

        b-=150;
      }
    } else if (a>=702 && a<=1138 && b>=495 && b<=557) {//plataforma 2
      b+=0;
      if (arriba) {

        b-=150;
      }
    } else if (a>=450 && a<=743 && b>=336 && b<=392) {//plataforma 3
      b=336;
      if (arriba) {

        b-=150;
      }
    } else if (a>=156 && a<=455 && b>=195 && b<=254) {//plataforma 4
      b=195;
      if (arriba) {

        b-=150;
      }
    } else if (a>=745 && a<=1039 && b>=181 && b<=238) {//plataforma 5
      b=181;
      if (arriba) {
        b-=150;
      }
    } else if (a>=13 && a<=74 && b>=42 && b<=96) {//plataforma de reaparicion derecha
      b=42;
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
