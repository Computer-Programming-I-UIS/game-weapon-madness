PImage escenario,prueba;
Julieta julieta1=new Julieta();

void setup() {
 
  size(1200, 800);
  escenario=loadImage ("Epruebas.png");
  prueba=loadImage("Julieta1 G.png");
  



}
void draw() {
image(escenario, 0, 0);

julieta1.mostrar();
julieta1.movimiento();









/*prueba=loadImage("Julieta1 G.png");
int lm,lm1;
lm=mouseX-40;
lm1=mouseY-40;
image(prueba,lm,lm1);*/


}
