int way=0;


void setup(){
  size(600,600);
  background(255);
}

 void draw(){ //press keyboard plz :)
    if(way==0){
     background(255);
     weirdthing();
   }
    if(way==1){
     background(255);
     photosensitiveepilepsy();
   }
    if(way==2){
     background(255);
     smilingface();
   }
   if(way==3){
     background(255);
     greenthings();
   }
   if(way==4){
     background(255);
     blacktri();
   }
   
 }
  void weirdthing(){ // pattern 1
    circles(70,70); //top left one
    squares(210,70);
    puretriangle(130,130); 
    
    for(int i=0;i<=600;i=i+319){
      for(int j=0;j<=600;j=j+319){
        circles(i+70,j+70);
        squares(i+210,j+70);
        puretriangle(i+130,j+130); 
      }
    }
    /*pushMatrix(); //top right one
    translate(319,0);
    circles(70,70);
    squares(210,70);
    puretriangle(130);
    popMatrix();
    */
    
    /*pushMatrix(); //down left one
    translate(0,349);
    circles(70,70);
    squares(210,70);
    puretriangle(130);
    popMatrix();
    */
    
    /*pushMatrix(); //down right one
    translate(319,349);
    circles(70,70);
    squares(210,70);
    puretriangle(130);
    popMatrix();
    */
    }
  
  void circles(int x,int y){ //circles
     strokeWeight(8);
     noFill(); 
     stroke(33,64,154);
  for(int i=10;i<150;i=i+20){
    ellipse(x,y,i,i);//70,70
   }
 }
   void squares(int x,int y){ //squares
      rectMode(CENTER);
      stroke(190,30,45);
      noFill();
   for(int i=130;i>10;i=i-20){
      rect(x,y,i,i);//210,70
    }
 }
    void puretriangle(int a,int b){ //triangle filled with color
       fill(255,222,23);
       noStroke();
       triangle(a,b+11,a-70,b+120,a+80,b+120);//130,141,60,250,210,250
     }
     
   void photosensitiveepilepsy(){ //patern 2
     flashingshapes(int(random(0,600)),int(random(0,600)));
   }
   void flashingshapes(int x, int y){
     strokeWeight(8);
     noFill(); 
     color a=color((int(random(0,250))),0,24);
     stroke(a);
   for(int i=10;i<150;i=i+20){
    ellipse(x,y,i,i);
   }
     rectMode(CENTER);
     stroke(a);
   for(int i=130;i>10;i=i-20){
      rect(x-100,y-200,i,i);
   }    
     
     fill(a);
     noStroke();
     rect(x-200,y+300,100,100);
  }
  
    void smilingface(){ //pattern 3
      noStroke();
      fill(0);
      ellipse(300,260,50,50);
      ellipse(400,325,50,50);
      
      beginShape();
      noFill();
      stroke(0);
      strokeWeight(12);
      vertex(200,320);
      bezierVertex(250,450,350,450,400,450);
      endShape();
  }
  void greenthings(){
    for(int i=30;i<600;i=i+150){
      for(int j=30;j<600;j=j+150){
        fill(177,250,29,40);
        circle(i+20,j+20,40);
        circle(i+60,j+20,40);
        strokeWeight(2);
        line(i+20,j+20,i+60,j+ 20);
        /*line(i+20,i+20,j+40,j+40);
        line(i+40,i+40,j+60,j+20);*/
        circle(i+40,j+40,40);
      }
    }
  }
    void blacktri(){
      for(int i=0;i<600;i=i+150){
        for(int j=0;j<600;j=j+150){
          noStroke(); 
          fill(0);    
          if((i+1)%3!=0){
          triangle(0+i,75+j,200+i,0+j,200+i,150+j);
          }
          if((i+1)%3==0){
            triangle(0+i,150+j,0+i,300+j,200+i,225+j);
        }
    }
  }
    }
  
     void keyPressed(){
       way++;
       if(way>4){
       way=0;
       
       }
     }
         
         
       
     
