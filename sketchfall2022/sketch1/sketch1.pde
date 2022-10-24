
void setup(){
  size(800,800);
  background(183,250,255);
  

}
void draw(){
  smooth();
  
  noStroke(); //the blue lines
  fill(11,82,212);
  rect(0,0,18,800);
  
  rect(0,782,800,18);
  
  rect(782,0,18,800);
  
  rect(0,0,800,18);
  
  noStroke(); //red circle
  fill(255,0,0);
  circle(580,692,96);
  
  noStroke();//leaves of the tree
  fill(101,235,0);
  circle(300,200,459);
  
  noStroke(); //darker leaves
  fill(24,158,51);
  circle(300,200,350);
  
  noStroke(); //darkest leaves
  fill(106,158,16);
  circle(300,200,241);
  
  
  noFill(); //circles with only strokes
  strokeWeight(4);
  stroke(227,220,218);
  circle(0,800,160);
  
  stroke(241,250,225);
  circle(0,800,320);
  
  stroke(125,1228,250);
  circle(0,800,480);
  
  stroke(216,240,223);
  circle(0,800,640);
  
  stroke(242,199,223);
  circle(0,800,800);
  
  fill(0,230,103,50);
  noStroke();
  circle(800,800,960);
  
 
  frameRate(0.8);
  noStroke(); //circle changing color from low r to high r
   for(int i=0;i<=10;i++){
    fill(i,255,0);
    circle(800,800,i);
   }
  
  smooth();
  fill(158,86,5);
  beginShape(); //left half of trunk
  vertex(360,620);
  vertex(240,480);
  vertex(280,400);
  vertex(290,250);
  endShape();

  fill(230,141,84);
  beginShape(); //right half of trunk
  vertex(360,620);
  vertex(440,480);
  vertex(290,250);
  endShape();
  
  beginShape(); //left branch
  vertex(285,350);
  vertex(288,320);
  vertex(100,200);
  endShape();
  
  fill(158,86,5); //shadow of the left branch
  beginShape();
  vertex(287,339);
  vertex(100,200);
  vertex(285,350);
  endShape();
  
  fill(230,141,84);
  beginShape(); //right branch
  vertex(365,390);
  vertex(500,220);
  vertex(348,370);
  endShape();
  
  fill(158,86,5); //shadow of right branch
  beginShape();
  vertex(348,370);
  vertex(500,220);
  vertex(355,378);
  endShape();
  
  noStroke(); //left red rect
  fill(235,60,23);
  quad(600,400,640,430,580,510,540,480);
  
  noStroke(); //right red rect
  fill(235,60,23);
  quad(700,475,740,505,680,585,640,555);
 
  beginShape(); //black curve
  noFill();
  stroke(0);
  strokeWeight(12);
  vertex(500, 530);
  bezierVertex(480, 610, 580, 685, 630, 635); 
  endShape();
  
  stroke(0);
  strokeWeight(2);
  line(580, 644, 580,685 ); //small line
  
  frameRate(1); //yellow points appears in the picture
  noStroke();
  float xLoc=random(800);
  float yLoc=random(800);
  float diam=random(100-200);
  fill(253,247,10,100);
  circle(xLoc,yLoc,diam);
  
 
}

    
