class Enemy
{
  
  float xPos, yPos;
  float xSpd, ySpd;
  float angle;
  
  int size;
  
  boolean active;
  
  PImage pic;
  
  public Enemy()
  {
    size = 70;
    enemyPic.resize(size,0);
    xPos = random(width); 
    yPos = height + size;
    
    xSpd = 0;
    ySpd = 0;
    active = true;
  }
  
  void drawEnemy()
  {
    //circle(xPos, yPos, size);
    push();
    translate(xPos,yPos);
    rotate(angle-HALF_PI);
    image(enemyPic,0,0);
    pop();
    angle = atan2(mouseY-yPos,mouseX-xPos); 
  }
  
  void moveEnemy()
  {
    //tells what direction to go based on players position
    if(mouseX > xPos)
      xSpd += 0.5;
    else
      xSpd -= 0.5;
    if(mouseY > yPos)
      ySpd += 0.5;
    else
      ySpd -= 0.5;
    
    //move enemy
    xPos += xSpd;
    yPos += ySpd;
    
    //friction 
    xSpd *= 0.97;
    ySpd *= 0.97;
    
    //check for catch
    if(dist(xPos,yPos,mouseX,mouseY) < size)
    {
      push();
      fill(255);
      textSize(50);
      textAlign(CENTER);
      text("YOU LOST",mouseX,mouseY+50);
      
      pop();
      noLoop();
    }
  }
}
