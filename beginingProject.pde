//Joshua Poppy
//second day program

ArrayList<Enemy> enemies = new ArrayList<Enemy>();

PImage enemy;
PImage player;

void setup()
{
  size(1600,900);
  
  imageMode(CENTER);
  
  enemy = loadImage("keese.png");
  player = loadImage("EarlPumpernickel.png");
  player.resize(100,0);
}
void draw()
{
  background(0);
  
  //draws the player
  image(player ,mouseX ,mouseY );
  
  
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
