class Star //note that this class does NOT extend Floater
{
  private color starColor;
  private int x;
  private int y;
  public Star(){
    starColor = color((int)(Math.random()*256),
    (int)(Math.random()*256),
    (int)(Math.random()*256));
    x = (int)(Math.random()*501) + 50;
    y = (int)(Math.random()*501) + 50;
  }
  public void show(){
    fill(starColor); stroke(starColor);
    ellipse(x, y, 2, 2);
  }
}
