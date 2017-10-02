NormalParticle[] stars;
void setup()
{
  size(500, 500);
  stars = new NormalParticle[10];
  for (int i = 0; i < NormalParticle.length; i++)
  {
    stars[i] = new NormalParticle();
  }
}
void draw()
{
  background(0);
  for (int i = 0; i < NormalParticle.length; i++)
  {
    stars[i].show();
    stars[i].move();
  }
}
class NormalParticle implements Particle
{
  int npColor; 
  double npX, npY, npSpeed, npAngle; //if x and y are int, they show up as a grid
  NormalParticle()
  {
    npColor = color(255); 
    npX = Math.random()*255; 
    npY = Math.random()*255; 
    npSpeed = Math.random()*10; 
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
interface Particle
{
  public void show(); 
  public void move();
}
//class OddballParticle //uses an interface
//{
//  //your code here
//}
//class JumboParticle //uses inheritance
//{
//  //your code here
//}
