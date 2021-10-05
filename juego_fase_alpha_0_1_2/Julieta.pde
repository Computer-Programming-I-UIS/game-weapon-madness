int x=610, y=12;


class Julieta {


  boolean derecha=false, izquierda=false, arriba=false, estatico=true, disparoizq=false, disparoder=false;

  void mostrar() {
    image(prueba, x, y);
  }
  void movimiento() {

    fill(#F01B1B);

    if (derecha) {

      x+=3;
    }
    if (izquierda) {
      x-=3;
    }
    if (arriba) {
      y-=10;
    }
    else {
      y+=4;
   }
  }

  void teclaPresionada (int code) {
    
     if (code == 45) {  //Disparar der
    Bala aux = new Bala(x,y);
    balas.add(aux);
    }
    if (code == 46) {  //Disparar izq
    Balaizq aux = new Balaizq(x,y);
    balasizq.add(aux);
    }
 
    if (code==39) {
      derecha=true;
      estatico=false;
    } else {
      estatico=true;
    }

    if (code==37) {
      izquierda=true;
      estatico=false;
    } else {
      estatico=true;
    }

    if (code==38) {
      arriba=true;
      estatico=false;
    } else {
      estatico=true;
    }
  }

  void teclaSuelta(int code) {
    if (code==39) {
      derecha=false;
    }
    if (code==37) {
      izquierda=false;
    }
    if (code==38) {
      arriba=false;
    }
  }
}
