Normal[] stars= new Normal[1000];
Oddball odd = new Oddball();
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
  odd.show();
  odd.move();
  for (int i = 0; i < 1000; i++)
  {
    stars[i].show();
    stars[i].move();
  }
}
interface Particle
{
  public void show(); 
  public void move();
}
class Normal implements Particle
{
  int nColor; 
  double nX, nY, nSpeed, nAngle; //if x and y are int, they show up as a grid
  Normal()
  {
    nColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)); 
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
    fill(nColor);
    ellipse((float)nX, (float)nY, 3, 3);
  }
}
class Oddball implements Particle
{
  double oX, oY, oSpeed, oAngle;
  Oddball()
  {
    oX = -5;
    oY = -5;
    oSpeed = (Math.random()*10)+10;
    oAngle = Math.PI *0.4* Math.random();
  }
  public void move()
  {
    oX = oX + (Math.cos(oAngle)* oSpeed);
    oY = oY + (Math.sin(oAngle)* oSpeed);
    if (oX > 640 || oY > 640)
    {
      oX = -5;
      oY = -5;
      oSpeed = (Math.random()*10)+10;
      oAngle = Math.PI *0.4* Math.random();
      oX = oX + (Math.cos(oAngle)* oSpeed);
      oY = oY + (Math.sin(oAngle)* oSpeed);
    }
  }
  public void show()
  {
    fill(255);
    ellipse((float)oX, (float)oY, 10, 10);
  }
}
class Jumbo extends Normal //uses inheritance
{
  int jX, jY;
  Jumbo()
  {
  }
}
