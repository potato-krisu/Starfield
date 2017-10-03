Normal[] stars= new Normal[100];
void setup()
{
  size(500, 500);
  for (int i = 0; i < 100; i++)
  {
    stars[i] = new Normal();
  }
}
void draw()
{
  background(0);
  for (int i = 0; i < 100; i++)
  {
    stars[i].show();
    stars[i].move();
  }
}
class Normal //implements Particle
{
  int npColor; 
  double npX, npY, npSpeed, npAngle; //if x and y are int, they show up as a grid
  Normal()
  {
    npColor = color(255); 
    npX = 250; 
    npY = 250; 
    npSpeed = Math.random()*2; 
    npAngle = Math.PI * 2 * Math.random();
  }
  public void move()
  {
    npX = npX + (Math.cos(npAngle) * npSpeed); 
    npY = npY + (Math.sin(npAngle) * npSpeed);
  }
  public void show()
  {
    npColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    ellipse((float)npX, (float)npY, 5, 5);
  }
}
//interface Particle
//{
//  public void show(); 
//  public void move();
//}
//class OddballParticle //uses an interface
//{
//  //your code here
//}
//class JumboParticle extends Normal //uses inheritance
//{
//  public void show()
//{
//  
//}
//}
