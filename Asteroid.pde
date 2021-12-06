class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners=6;
    xCorners=new int[]{-11,-5,-11,7,13,6};
    yCorners=new int[]{8,0,-8,-8,0,10};
    myColor=200;
    myCenterX=Math.random()*400;
    myCenterY=Math.random()*400;
    myXspeed=Math.random()*0.5;
    myYspeed=Math.random()*0.5;
    myPointDirection=Math.random()*360;
    rotSpeed=Math.random()*2;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
}
