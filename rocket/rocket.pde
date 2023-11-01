PImage rocket1;
PImage rocket2;
boolean rocketLaunch = false;
float a = 260;

void setup(){
  size(700,700);
  
  rocket1 = loadImage("rocketa.png");
  rocket2 = loadImage("rocketb.png");
}

void draw(){
  background(#0795EA);
  
  if(rocketLaunch == false)
    image(rocket1,200,a);
  else if(rocketLaunch == true)
    image(rocket2,200,a);
}

void keyPressed(){
  rocketLaunch =! rocketLaunch;
  
  if(keyCode == UP)
    a = a - 20;
    
  if(keyCode == DOWN)
    a = a + 20;
}
