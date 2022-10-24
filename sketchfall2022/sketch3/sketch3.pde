// You can press q or Q and w or W and e or E first to selecct pattern
// Then click or press the left or the right button on the mouse to begin
// Pls press r or R to clean up the whole screen 

void setup(){
  size(1000,1000);
  background(0);
}
void draw(){
  if(key=='q'||key=='Q'){ //"Q" patttern 
  if(mousePressed){
    translate(mouseX-180,mouseY-180);
    sketchpattern(mouseX,mouseY);
    println("Q's position",mouseX,mouseY);
  }
} 
  if(key=='w'||key=='W'){ //"W" pattern
    if(mousePressed){
     translate(mouseX,mouseY);
      newpattern(mouseX,mouseY);
     println("W's position", mouseX,mouseY);
  }  
}
  if(key=='e'||key=='E'){ //combination of the "Q" and "W" pattern
    if(mousePressed){
      translate(mouseX,mouseY);
      sketchpattern(mouseX-300,mouseY-300);
      newpattern(mouseX,mouseY);
      println("QW's position",mouseX,mouseY);
    }
  }
  if(key=='r'||key=='R'){ //clean up the screen
    background(0);
    println("Screen is clean :)");
  }
}



void sketchpattern(int x, int y){ //pattern in sketch 2
  scale(0.5);
  strokeWeight(8);
  noFill(); 
  stroke(33,64,154,50);
  for(int i=10;i<150;i=i+30){
    ellipse(x-150,y,i,i);
   }
   
   rectMode(CENTER);
   stroke(190,30,45,50);
   noFill();
   for(int i=130;i>10;i=i-30){
      rect(x,y,i,i);
    }
    
    fill(255,222,23,50);
    noStroke();
    triangle(x,x+11,x-70,x+120,x+80,x+120);
}

void newpattern(int x, int y){
  scale(0.7);
  for(int i=0;i<8;i++){
     fill(int(random(150,255)),int(random(250,255)),int(random(0,255)),30);
     noStroke();
     triangle(x-100,y-100,x+250,y-100,x,y-60);
     rotate(radians(45));
  }
}
