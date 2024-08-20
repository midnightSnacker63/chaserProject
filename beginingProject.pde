//Joshua Poppy
//second day program

ArrayList<Enemy> enemies = new ArrayList<Enemy>();

PImage enemyPic;
PImage playerPic;

void setup()
{
  size(1600,900);
  
  imageMode(CENTER);
  
  enemyPic = loadImage("keese.png");
  playerPic = loadImage("EarlPumpernickel.png");
  playerPic.resize(100,0);
  
  noSmooth();
}
void draw()
{
  background(0);
  
  //draws the player
  image(playerPic ,mouseX ,mouseY );
  
  
  //draws the enemy
  handleEnemies();
  //enemies.add( new Enemy());
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
