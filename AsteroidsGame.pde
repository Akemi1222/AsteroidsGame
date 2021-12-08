Spaceship spaceship=new Spaceship();
Star[] star=new Star[100];
ArrayList <Asteroid> asteroid=new ArrayList <Asteroid>();
public void setup(){
  size(400,400);
  background(0);
  for (int i=0;i<star.length;i++){star[i]=new Star();}
  for (int i=0;i<10;i++){asteroid.add(new Asteroid());}
}
public void draw() {
  background(0);
  noStroke();
  for (int i=0;i<star.length;i++){star[i].show();}
  for (int i=0;i<asteroid.size();i++){
    asteroid.get(i).move();
    asteroid.get(i).show();
    float d=dist((float)spaceship.getCenterX(),(float)spaceship.getCenterY(),(float)asteroid.get(i).getCenterX(),(float)asteroid.get(i).getCenterY());
    if (d<10){asteroid.remove(i);}
  }
  if (keyPressed){
   if (key=='a'){spaceship.turn(-10);}
   if (key=='d'){spaceship.turn(10);}
   if (key=='w'){spaceship.accelerate(0.5);}
   if (key=='s'){spaceship.accelerate(-0.5);}
   if (key==' '){spaceship.hyperspace();}
  }
  color(255);
  text("Center X: "+spaceship.myCenterX,25,30);
  text("Center Y: "+spaceship.myCenterY,25,45);
  text("Speed X: "+spaceship.myXspeed,25,60);
  text("Speed Y: "+spaceship.myYspeed,25,75);
  text("Direction: "+spaceship.myPointDirection,25,90);
  spaceship.move();
  spaceship.show();
}
