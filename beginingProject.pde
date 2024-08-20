//Joshua Poppy
//second day program

Enemy testEnemy;

void setup()
{
  size(1600,900);
  
  testEnemy = new Enemy();
}
void draw()
{
  background(0);
  
  //draws the player
  circle( mouseX,mouseY,50 );
  
  //draws the enemy
  testEnemy.drawEnemy();
  testEnemy.moveEnemy();
}
