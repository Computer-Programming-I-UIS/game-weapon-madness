


class Julieta2 {
 


  boolean derecha=false, izquierda=false, arriba=false, up=false, disparoizq=false, disparoder=false,abajo=false;

  //Muestra la animacion de salto/caida/estatico
  void mostrar() {
    if (up) {
      pushMatrix() ;
      translate(x, y);
      movimientoMup.draw();
      popMatrix();
    }
  }
  
  void vidas(){
  image(corazon,1000,650);
  textSize(40);
  text(v1,1040,660);
  }
  
  //REVIVIR
  void revivir() {
    if (y>1200) {
      x=1165;
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

    //gravedad y plataformas
    if ( x>=64 && x<=509 && y>=485 && y<=547) {//plataforma 1
      y=485;
      if (arriba) {
        y-=150;
      }
    } else if (x>=702 && x<=1138 && y>=485 && y<=547) {//plataforma 2
      y=485;
      if (arriba) {
        y-=150;
      }
    } else if (x>=450 && x<=743 && y>=326 && y<=382) {//plataforma 3
      y=326;
      if (arriba) {
        y-=150;
      }
    } else if (x>=156 && x<=455 && y>=185 && y<=244) {//plataforma 4
          y=185;
      if (arriba) {
        y-=150;
      }
    } else if (x>=745 && x<=1039 && y>=171 && y<=228) {//plataforma 5
      y=171;
      if (arriba) {
        y-=150;
      }
    } else if (x>=1126 && x<=1187 && y>=11 && y<=70) {//plataforma reaparicion izquierda
      y=11;
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
