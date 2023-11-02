PImage location1;
PImage location2;
boolean walk = false;
float x = 200;

void setup(){
  size(400,200);
  location1 = loadImage("friend1.png");
  location2 = loadImage("friend2.png");
}

void draw(){
  background(#66D5F0);
  fill(#096C18);
  rect(0,150,400,50);
  
  if(walk == false)
    image(location1,x,60);
  else if(walk == true)
    image(location2,x,60);
}

void keyPressed(){
  walk =! walk;
  if(keyCode == LEFT)
    x = x - 10;
    
  if(keyCode == RIGHT)
    x = x + 10;
}
