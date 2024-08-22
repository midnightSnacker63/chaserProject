//Joshua Poppy
//second day program

ArrayList<Enemy> enemies = new ArrayList<Enemy>();

int score;
int nextPoint = 3000;
int nextEnemy = 3000;

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
  if( millis() > nextPoint )
  {
    score++;
    nextPoint += 3000;
  }
  push();
  textSize(50);
  text("score: "+score,25,50);
  pop();
  //draws the enemy
  handleEnemies();
  if(millis() > nextEnemy)
  {
    enemies.add( new Enemy());
    nextEnemy += 3000;
  }
 
}

void handleEnemies()
{
  for(int i = 0; i < enemies.size(); i++)
  {
    for(int j = 0; j < enemies.size(); j++)
    {
      if( i != j && dist(enemies.get(i).xPos, enemies.get(i).yPos, enemies.get(j).xPos, enemies.get(j).yPos ) < 45)//bounce off of each other
      {
        enemies.get(i).xSpd *= -2;
        enemies.get(i).ySpd *= -2;
        //enemies.get(i).xPos, enemies.get(i).yPos
      }
    }
    if(!enemies.get(i).active)//if dead then go away
    {
      enemies.remove(i);
    }
  }
  for (Enemy e: enemies)
  {
    e.drawEnemy();
    e.moveEnemy();
  }
}
void mousePressed()
{
  enemies.add( new Enemy());
}
