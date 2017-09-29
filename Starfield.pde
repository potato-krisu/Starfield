Particle[] stars;
void setup()
{
  size(500, 500);
  stars = new Particle[10];
  for ( i = 0; i < Particle.length; i ++)
  {
    stars[i] = new Particle();
  }
}
void draw()
{
  background(0);
  stars = new Particle[10];
}
class Particle
{
  int npColor; 
  double npX, npY, npSpeed, npAngle; //if x and y are int, they show up as a grid
  Particle()
  {
    npColor = color(255); 
    npX = Math.random()*255; 
    npY = Math.random()*255; 
    npSpeed = Math.random()*10; 
    npAngle = Math.PI * 2 * Math.random();
  }
  void move()
  {
    npX = npX + (Math.cos(npAngle) * npSpeed); 
    npY = npY + (Math.sin(npAngle) * npSpeed);
  }
  void show()
  {
    npColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  //interface SParticle
  //{
  //  public void show(); 
  //  public void move();
  //}
  //class OddballParticle //uses an interface
  //{
  //  //your code here
  //}
  //class JumboParticle //uses inheritance
  //{
  //  //your code here
  //}
}
