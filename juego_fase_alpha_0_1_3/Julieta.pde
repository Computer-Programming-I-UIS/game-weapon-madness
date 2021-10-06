int x=610, y=12;


class Julieta {


  boolean derecha=false, izquierda=false, arriba=false, estatico=true, disparoizq=false, disparoder=false;

  void mostrar() {
    image(prueba, x, y);
  }
  void movimiento() {

    fill(#F01B1B);

    if (derecha) {

      x+=4;
    }
    if (izquierda) {
      x-=4;
    }
    if (arriba) {
      y-=9.8+9;
    }
   
    //gravedad
    if ( x>=90 && x<=1000 && y>=521 && y<=530) {
      y+=0;
    }       //plataformas
    else if (x>=349 && x<=813 && y>=403 && y<=413) {
      y+=0;
    } else if (x>=178 && x<=382 && y>=295 && y<=305) {
      y+=0;
    } else if (x>=779 && x<=1001 && y>=295 && y<=305) {//
      y+=0;
    }  
    else if (x>=349 && x<=813 && y>=178 && y<=188) {//
      y+=0;
    }  

    else {
      y+=9.8;
    }
  }

  void teclaPresionada (int code) {

    if (code == 45) {  //Disparar der
      Bala aux = new Bala(x, y);
      balas.add(aux);
    }
    if (code == 46) {  //Disparar izq
      Balaizq aux = new Balaizq(x, y);
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
