int a = 240;
int b = 240;
int c = 640;
int d = 240;

void setup(){
  size(800,600);
}

void draw(){
  background(#269AAD);
  
  fill(0);
  ellipse(300,300,250,250);
  fill(255);
  ellipse(a,b,50,50);
  a = constrain(mouseX,240,365);
  b = constrain(mouseY,240,365);
  
  fill(0);
  ellipse(600,300,250,250);
  fill(255);
  ellipse(c,d,50,50);
  c = constrain(mouseX,540,665);
  d = constrain(mouseY,240,365);
  
}
