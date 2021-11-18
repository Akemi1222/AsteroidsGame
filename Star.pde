class Star {
  private int myX,myY,myColor;
  public Star(){
    myX=(int)(Math.random()*400);
    myY=(int)(Math.random()*400);
    myColor=255;
  }
  public void show(){
    fill(myColor);
    ellipse(myX,myY,2,2);
  }
}
