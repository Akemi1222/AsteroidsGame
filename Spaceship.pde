class Spaceship extends Floater  
{   
    public Spaceship(){
      corners=4;
      xCorners=new int[]{-8,16,-8,-2};
      yCorners=new int[]{-8,0,8,0};
      myColor=color(0,255,0);
      myCenterX=200;
      myCenterY=200;
      myXspeed=0;
      myYspeed=0;
      myPointDirection=90;
    }
    public void hyperspace(){
      myXspeed=myYspeed=0;
      myCenterX=(int)(Math.random()*400);
      myCenterY=(int)(Math.random()*400);
      myPointDirection=(int)(Math.random()*360);
    }
    public double getCenterX(){
      return myCenterX;
    }
    public double getCenterY(){
      return myCenterY;
    }
    public double getXspeed(){
      return myXspeed;
    }
    public double getYspeed(){
      return myYspeed;
    }
    public double getPointDirection(){
      return myPointDirection;
    }
}
