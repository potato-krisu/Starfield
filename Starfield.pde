Normal[] stars= new Normal[1000];
void setup()
{
  size(600, 600);
  for (int i = 0; i < 1000; i++)
  {
    stars[i] = new Normal();
  }
}
void draw()
{
  background(0);
  for (int i = 0; i < 1000; i++)
  {
    stars[i].show();
    stars[i].move();
  }
}
class Normal //implements Particle
{
  int npColor; 
  double nX, nY, nSpeed, nAngle; //if x and y are int, they show up as a grid
  Normal()
  {
    npColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)); 
    nX = 300; 
    nY = 300; 
    nSpeed = Math.random()*3; 
    nAngle = Math.PI * 2 * Math.random();
  }
  public void move()
  {
    nX = nX + (Math.cos(nAngle) * nSpeed); 
    nY = nY + (Math.sin(nAngle) * nSpeed);
  }
  public void show()
  {
    noStroke();
    ellipse((float)nX, (float)nY, 3, 3);
  }
}
//interface Particle
//{
//  public void show(); 
//  public void move();
//}
class Oddball //uses an interface
{
  double oX, oY;
  Oddball()
  {
    oX = Math.random()*600;
    oY = Math.random()*600;
  }
  public void move()
  {
  }
  public void show()
  {
  }
}
//class JumboParticle extends Normal //uses inheritance
//{
//  public void show()
//{
//  
//}
//}
