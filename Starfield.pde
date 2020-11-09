Particle[] parts = new Particle[100];

void setup()
{
  size(400,400);
  for(int i = 0; i < parts.length; i++)
  {
    parts[i] = new Particle();
    parts[0] = new OddballParticle();
  }
}
void draw()
{
  background(255);
  for(int i = 0; i < parts.length; i++)
  {
    parts[i].move();
    parts[i].show();
  }
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor; 
  Particle()
  {
    myX = (int)200;
    myY = (int)200;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*1;
    myColor = color((int)(Math.random()*256)+1, (int)(Math.random()*256)+1, (int)(Math.random()*256)+1, (int)(Math.random()*256)+1);
  }
  void move()
  {
    myX = myX+(Math.cos(myAngle) * mySpeed);
    myY = myY+(Math.sin(myAngle) * mySpeed);
  }
  void show()
  {
   fill(myColor);
   stroke(myColor);
   ellipse((float)myX,(float)myY,50,50);
   }
}

class OddballParticle extends Particle
{
 OddballParticle()
{
    myX = (int)200;
    myY = (int)200;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color(0);
}
void move()
{
  myX= myX + (int)(Math.random()*5)-2;
  myY= myY + (int)(Math.random()*5)-2;
}
void show()
{
   fill(myColor);
   stroke(myColor);
   rect((float)myX,(float)myY,50,50);
   
}
}
