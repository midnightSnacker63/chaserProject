class Enemy
{
  
  float xPos, yPos;
  float xSpd, ySpd;
  
  int size;
  
  PImage pic;
  
  public Enemy()
  {
    size = 50;
    
    xPos = random(width); 
    yPos = height + size;
    
    xSpd = 0;
    ySpd = 0;
  }
  
  void drawEnemy()
  {
    circle(xPos, yPos, size);
  }
  
  void moveEnemy()
  {
    //tells what direction to go based on players position
    if(mouseX > xPos)
      xSpd += 0.22;
    else
      xSpd -= 0.22;
    if(mouseY > yPos)
      ySpd += 0.22;
    else
      ySpd -= 0.22;
    
    //move enemy
    xPos += xSpd;
    yPos += ySpd;
    
    //friction 
    xSpd *= 0.98;
    ySpd *= 0.98;
  }
}
