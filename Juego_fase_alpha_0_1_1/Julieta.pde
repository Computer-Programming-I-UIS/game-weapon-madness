int lm=610, lm1=12;


class Julieta {
  

  boolean derecha=false, izquierda=false, arriba=false, estatico=true, disparoizq=false, disparoder=false;

  void mostrar() {
    image(prueba, lm, lm1);
  }
  void movimiento() {

    if (derecha) {
    
      lm+=3;
    }
    if (izquierda) {
      lm+=3;
    }
    if (arriba) {
      lm1+=3;
    }
  }

  void teclaPresionada (int code) {
    if (code==68) {
      derecha=true;
      estatico=false;
    } else {
      derecha=false;
      estatico=true;
    }
   
    if (code==65) {
      izquierda=true;
      estatico=false;
    } else {
      izquierda=false;
      estatico=true;
    }
    
    if (code==87) {
      arriba=true;
      estatico=false;
    } else {
      arriba=false;
      estatico=true;
    }
  }

}
