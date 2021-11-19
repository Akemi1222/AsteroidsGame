Spaceship spaceship=new Spaceship();
Star[] star=new Star[100];
public void setup(){
  size(400,400);
  background(0);
  for (int i=0;i<star.length;i++){star[i]=new Star();}
}
public void draw() {
  background(0);
  noStroke();
  for (int i=0;i<star.length;i++){star[i].show();}
  if (keyPressed){
   if (key=='a'){spaceship.turn(-10);}
   if (key=='d'){spaceship.turn(10);}
   if (key=='w'){spaceship.accelerate(0.5);}
   if (key=='s'){spaceship.accelerate(-0.5);}
   if (key==' '){spaceship.hyperspace();}
  }
  text("Center X: "+String.format("%.1f",spaceship.myCenterX),25,30);
  text("Center Y: "+String.format("%.1f",spaceship.myCenterY),25,45);
  text("Speed X: "+String.format("%.1f",spaceship.myXspeed),25,60);
  text("Speed Y: "+String.format("%.1f",spaceship.myYspeed),25,75);
  text("Direction: "+String.format("%.1f",spaceship.myPointDirection),25,90);
  spaceship.move();
  spaceship.show();
}
