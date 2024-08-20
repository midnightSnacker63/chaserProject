//Joshua Poppy
//second day program

ArrayList<Enemy> enemies = new ArrayList<Enemy>();

void setup()
{
  size(1600,900);
  

}
void draw()
{
  background(0);
  
  //draws the player
  circle( mouseX,mouseY,50 );
  
  //draws the enemy
  handleEnemies();
}

void handleEnemies()
{
  for(int i = 0; i < enemies.size(); i++)
  {
    if(!enemies.get(i).active)
    {
      enemies.remove(i);
    }
  }
  for (Enemy e: enemies)
  {
    e.moveEnemy();
    e.drawEnemy();
  }
}
void mousePressed()
{
  enemies.add( new Enemy());
}
