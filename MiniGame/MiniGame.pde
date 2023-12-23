int x = 100;
int y = 100;
int directionX = 0;
int directionY = 0;
int speed = 3;
int lives = 5;
int engel = 0;

void setup(){
  size(400,400);
}
void draw(){
  background(255,255,0);
  fill(255,0,255);
  noStroke();
  rectMode(CENTER);
  rect(x,y,20,20);
  
  x = x + (speed * directionX);
  y = y + (speed * directionY);
  
  for(int i = -50; i <= 450; i += 100){
    for(int j = -50; j <= 450; j += 100){
      fill(0);
      ellipse(i+engel,j,50,50);
    }
  }
  
  engel += 1;
  if(engel > 50)
    engel =-50;
  
  int side1 = get(x-11,y-11);
  int side2 = get(x+11,y-11);
  int side3 = get(x-11,y+11);
  int side4 = get(x+11,y+11);
  
  float renkBul = get(mouseX,mouseY);
  if((side1 == -1.6777216E7) || (side2 == -1.6777216E7) ||
  (side3 == -1.6777216E7) || (side4 == -1.6777216E7)){
    x = 100;
    y = 100;
    directionX = 0;
    directionY = 0;
    lives = lives - 1;
  }
  
  fill(0);
  textAlign(CENTER,CENTER);
  textSize(15);
  text("yasam =" + lives, 40,15);
  
  if(x >= 400 && y > 100){
    textAlign(CENTER,CENTER);
    textSize(65);
    text("YOU WIN", width/2, height/2 -10);
  }
  
  if(lives == 0){
    textAlign(CENTER,CENTER);
    textSize(65);
    text("GAME OVER", width/2, height/2 -10);
  }
}
void keyPressed(){
  if(keyCode == LEFT){
    directionX = -1;
    directionY = 0;
  }
  else if(keyCode == RIGHT){
    directionX = 1;
    directionY = 0;
  }
  else if(keyCode == DOWN){
    directionX = 0;
    directionY = 1;
  }
  else if(keyCode == UP){
    directionX = 0;
    directionY = -1;
  }
  else if(keyCode == SHIFT){
    directionX = 0;
    directionY = 0;
  }
}
