class sMapas {

  int x=50;
  int y =365;
  int w =316;
  int h =161;
  PImage sMapas;

  sMapas() {
    sMapas = loadImage("sMapas.png");
  }

  void mostrarsMapas() {

    image(sMapas, 0, 0);
  }


  int saberPantallaSig() {
    int nextPantalla = 1;

    if ((mousePressed)&&(mouseX > x)&&(mouseX< x + w) &&  (mouseY > y)&&(mouseY< y + h)) {
     
      nextPantalla = 4; 
    } else {
      fill(256);                                                   //boton start mapa selva
    }


    if ((mousePressed)&&(mouseX > x+357)&&(mouseX< x+357+ w) &&  (mouseY > y-7)&&(mouseY< y-7 + h)) {
      fill(0);

      nextPantalla =5;                                     // Boton start haloween          
    }
    



   /* if ((mousePressed)&&(mouseX > x+715)&&(mouseX< x+715+ w) &&  (mouseY > y-7)&&(mouseY< y-7 + h)) {
      fill(0);
      nextPantalla = 3;  //asignar otro caso para el juego (cambiar)
    } else {
      fill(256);
    }
    noFill();                                                          //boton mapa "en construccion"
    noStroke();
    rect(x+715, y-7, w, h); */


    if ((mousePressed)&&(mouseX > x-34)&&(mouseX< x-34 + w-133) &&  (mouseY > y+255)&&(mouseY< y+255 + h-98)) {
      fill(0);
      nextPantalla = 0;
    } else {
      fill(256);                                                        //boton de exit
    }
   

    return nextPantalla;
  }
}
