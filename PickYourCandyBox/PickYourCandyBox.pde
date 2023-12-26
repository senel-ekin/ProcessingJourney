PImage[] sekerler = new PImage[16];
PImage[] kutular = new PImage[6];
int sahne = 0;
boolean pop1, pop2, pop3, pop4;
boolean mint1, mint2, mint3, mint4;
boolean taffy1, taffy2, taffy3, taffy4;
boolean choco1, choco2, choco3, choco4;

void setup(){
  size(500,500);
  
  for(int i = 0; i < 16; i++)
    sekerler[i] = loadImage("candy" + i + ".png");
    
  for(int j = 0; j < 6; j++)
    kutular[j] = loadImage("box" + j + ".png");
}

void draw(){
  background(255);
  imageMode(CENTER);
  
  if(sahne == 0)
    image(kutular[0],250,250);
    
  if(sahne == 1)
    image(kutular[1],250,250);
    
  if(sahne == 2)
    image(kutular[2],250,250);
    
  if(sahne == 3)
    image(kutular[3],250,250);
    
  if(sahne == 4)
    image(kutular[4],250,250);
  
  if(sahne == 5){
    image(kutular[5],250,250);
    
    
  if(pop1)
    image(sekerler[0],170,160);
  else if(pop2)
    image(sekerler[1],170,160);
  else if(pop3)
    image(sekerler[2],170,160);
  else if(pop4)
    image(sekerler[3],170,160);
  
    
  if(mint1)
    image(sekerler[4],320,160);
  else if(mint2)
    image(sekerler[5],320,160);
  else if(mint3)
    image(sekerler[6],320,160);
  else if(mint4)
    image(sekerler[7],320,160);
  
  if(taffy1)
    image(sekerler[8],170,310);
  else if(taffy2)
    image(sekerler[9],170,310);
  else if(taffy3)
    image(sekerler[10],170,310);
  else if(taffy4)
    image(sekerler[11],170,310);
  
  if(choco1)
    image(sekerler[12],320,310);
  else if(choco2)
    image(sekerler[13],320,310);
  else if(choco3)
    image(sekerler[14],320,310);
  else if(choco4)
    image(sekerler[15],320,310);
  }
    
  if(sahne == 6){
    sahne = 1;
    pop1 = false;
    pop2 = false;
    pop3 = false;
    pop4 = false;
    mint1 = false;
    mint2 = false;
    mint3 = false;
    mint4 = false;
    taffy1= false;
    taffy2 = false;
    taffy3 = false;
    taffy4 = false;
    choco1 = false;
    choco2 = false; 
    choco3 = false;
    choco4 = false;
  }
}

void mousePressed(){
  sahne = sahne + 1;
  if(sahne == 2){
    if((mouseX > 75)&&(mouseX < 250)&&(mouseY > 75)&&(mouseY < 250))
      pop1 = true;
    else if((mouseX > 250)&&(mouseX < 500)&&(mouseY > 75)&&(mouseY < 250))
      pop2 = true;
    else if((mouseX > 75)&&(mouseX < 250)&&(mouseY > 250)&&(mouseY < 500))
      pop3 = true;
    else if((mouseX > 250)&&(mouseX < 500)&&(mouseY > 250)&&(mouseY < 500))
      pop4 = true;
  }
  if(sahne == 3){
    if((mouseX > 75)&&(mouseX < 250)&&(mouseY > 75)&&(mouseY < 250))
      mint1 = true;
    else if((mouseX > 250)&&(mouseX < 500)&&(mouseY > 75)&&(mouseY < 250))
      mint2 = true;
    else if((mouseX > 75)&&(mouseX < 250)&&(mouseY > 250)&&(mouseY < 500))
      mint3 = true;
    else if((mouseX > 250)&&(mouseX < 500)&&(mouseY > 250)&&(mouseY < 500))
      mint4 = true;
  }
  if(sahne == 4){
    if((mouseX > 75)&&(mouseX < 250)&&(mouseY > 75)&&(mouseY < 250))
      taffy1 = true;
    else if((mouseX > 250)&&(mouseX < 500)&&(mouseY > 75)&&(mouseY < 250))
      taffy2 = true;
    else if((mouseX > 75)&&(mouseX < 250)&&(mouseY > 250)&&(mouseY < 500))
      taffy3 = true;
    else if((mouseX > 250)&&(mouseX < 500)&&(mouseY > 250)&&(mouseY < 500))
      taffy4 = true;
  }
  if(sahne == 5){
    if((mouseX > 75)&&(mouseX < 250)&&(mouseY > 75)&&(mouseY < 250))
      choco1 = true;
    else if((mouseX > 250)&&(mouseX < 500)&&(mouseY > 75)&&(mouseY < 250))
      choco2 = true;
    else if((mouseX > 75)&&(mouseX < 250)&&(mouseY > 250)&&(mouseY < 500))
      choco3 = true;
    else if((mouseX > 250)&&(mouseX < 500)&&(mouseY > 250)&&(mouseY < 500))
      choco4 = true;
  }     
}
