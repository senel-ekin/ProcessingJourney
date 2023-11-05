PImage enemy;
PImage place;
PImage player;
int healthy = 150;
float playerX = 50;
float playerY = 475;
float playerSpeed = 5;
int directionX = 0;
float enemyLX = 150;
float enemyLY = 200;
float enemyRX = 450;
float enemyRY = 200;
float enemySpeed = 5;

void setup(){
  size(600,600);
  player = loadImage("player.png");
  enemy = loadImage("enemy.png");
  place = loadImage("place.png");
}

void draw(){
  //ground
  background(0);
  imageMode(CENTER);
  image(place,300,300,600,600);
  
  //for health
  fill(#F4F514);
  noStroke();
  rect(0,0,25,healthy);
  
  //player
  image(player,playerX,playerY);
  
  //animating the player with the keyboard (speed and direction)
  playerX = playerX + (playerSpeed * directionX);
  
  //reset
  if(playerX > 650 || playerX < 50){
    playerX = 50;
    directionX = 0;
    enemySpeed = enemySpeed + 5;
  }
  
  //first enemy (Left)
  image(enemy,enemyLX,enemyLY);
  enemyLY = enemyLY + enemySpeed;
  if(enemyLY > 700){
    enemyLY = -50;
    enemyLX = random(50,300);
  }
  
  //second enemy (right)
  image(enemy,enemyRX,enemyRY);
  enemyRY = enemyRY - enemySpeed;
  if(enemyRY < -100){
    enemyRY = 750;
    enemyRX = random(300,600);
  }
  
  //player and enemy crash test
  if((dist(playerX,playerY,enemyLX,enemyLY) < 100) || 
  (dist(playerX,playerY,enemyRX,enemyRY) < 100)){
    healthy = healthy - 1;
    playerX = 50;
    directionX = 0;
  }
  
  if(healthy <= 0){
    tint(255,0,0);
    textAlign(CENTER,CENTER);
    textSize(50);
    text("GAME OVER",width/2,height/2);
    enemyLX = 150;
    enemyLY = 250;
    enemyRX = 450;
    enemyRY = 200; 
  }
}

void keyPressed(){
  if(keyCode == LEFT)
    directionX = -1; //go left
  else if (keyCode == RIGHT)
    directionX = +1;  //go right
}
