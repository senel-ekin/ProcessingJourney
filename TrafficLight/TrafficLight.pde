boolean circle1 = false;
boolean circle2 = false;
boolean circle3 = false;

void setup(){
  size(200,600);
}

void draw(){
  background(0);
  noStroke();
  fill(0);
  
  stroke(255);
  line(0,200,200,200);
  line(0,400,200,400);
  
  if(circle1){
    fill(255,0,0);
    ellipse(100,100,150,150);
  }
  if(circle2){
    fill(255,255,0);
    ellipse(100,300,150,150);
  }
  if(circle3){
    fill(0,255,255);
    ellipse(100,500,150,150);
  }
}

void mousePressed(){
  if((mouseY > 0) && (mouseY < 200)){
    circle1 = true;
    circle2 = false;
    circle3 = false;
  }
  else if((mouseY > 200) && (mouseY < 400)){
    circle1 = false;
    circle2 = true;
    circle3 = false;
  }
  if((mouseY > 400) && (mouseY < 600)){
    circle1 = false;
    circle2 = false;
    circle3 = true;
  }
}
