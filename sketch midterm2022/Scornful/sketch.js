var m = 0.0;
var n = 0.0;
var p = 0.0;
var q = 0.0;
var eyesclosed = false;
var eyewide = 50;
var counter=0;
var lilith;
var backscorn;
var i=0;
var j=0;

function setup(){
	createCanvas(600,600);
    smooth();
    
    backscorn=new Scorny();
    lilith=new Scornx();
    
    
}

function draw(){ 
     
     backscorn.displaybackground();
     backscorn.movingscorn();
     
     noStroke(); //face
     fill(173,0,224);
     triangle(150,100,450,100,300,400);
  
     lilith.movingeyes();
     lilith.displayeyes();
     lilith.mideye();
  

    
    
}
  class Scornx{
    constructor(){
      this.a=200;
      this.b=358;
      this.c=0.0;
      this.d=0.0;
      this.e=0.0;
    }
    displayeyes(){
      stroke(0);
      strokeWeight(4);
      noFill();
  for(this.i=0;this.i<=100;this.i=this.i+50){ //left shapes of eyes
  beginShape();
  vertex(this.a+0.5*this.i,180+this.i);
  bezierVertex(214+0.5*this.i,170+this.i,228+0.5*this.i,170+this.i,242+0.5*this.i,180+this.i);
  endShape();
  
  beginShape();
  vertex(this.a+0.5*this.i,180+this.i);
  bezierVertex(214+0.5*this.i,190+this.i,228+0.5*this.i,190+this.i,242+0.5*this.i,180+this.i);
  endShape();  
  }
  
  for(this.i=150;this.i>=0;this.i-=50){ //right shapes of eyes
    beginShape();
    vertex(this.b-0.5*this.i,165+this.i);
    bezierVertex(372-0.5*this.i,175+this.i,386-0.5*this.i,175+this.i,400-0.5*this.i,165+this.i);
    endShape();
    
    beginShape();
    vertex(this.b-0.5*this.i,165+this.i);
    bezierVertex(372-0.5*this.i,155+this.i,386-0.5*this.i,155+this.i,400-0.5*this.i,165+this.i);
    endShape();
  }
}
    movingeyes(){
      
      stroke(0);
      strokeWeight(4);
      noFill();
  
      this.c = (sin(m)+16) * 13.76673524; 
      m+=0.1;  
      ellipseMode(CENTER);
      noStroke();
      fill(255,0,0);
      ellipse(this.c,180,10,10); 
      fill(0);
      ellipse(this.c,180,random(1,7),random(1,7));
    
      fill(255,0,0);
      ellipse(240,230,10,10); 
      fill(0);
      ellipse(240,230,3,3);
    
      this.d = (sin(n)+16) * 13.76673524; 
      n+=0.0178;
      fill(255,0,0);
      ellipse(this.d+50,280,10,10); 
      fill(0);
      ellipse(this.d+50,280,random(1,7),random(1,7));
    
      
      fill(255,0,0);
      ellipse(383,165,10,10);
      fill(0);
      ellipse(383,165,3,3);
    
      fill(255,0,0);
      ellipse(350,215,10,10);
      fill(0);
      ellipse(350,215,3,3);
      
      this.e = (sin(p)+22) * 14.7899
      p+=0.02
      fill(255,0,0);
      ellipse(this.e+3.2,265,10,10);
      fill(0);
      ellipse(this.e+3.2,265,random(1,7),random(1,7));
      
      this.f = (sin(q)+22) * 14.7899;
      q+=0.04;
      fill(255,0,0);
      ellipse(this.f-22,315,10,10);
      fill(0);
      ellipse(this.f-22,315,random(1,7),random(1,7));
    
    }
      mideye(){
        counter = counter + deltaTime;
     
    if (eyesclosed&&counter>200) {
    eyewide = 50;
    eyesclosed = false;
    counter = 0;
  } else if (counter > 2000) {
    eyewide = 2;
    eyesclosed = true;
    counter = 0;
  }
   if(eyesclosed==false){
      strokeWeight(1);
      stroke(255,0,0);
      line(290,165,280,155)
      line(285,160,293,145)
      line(287,157,288,134)
      line(288,138,299,126)
      line(310,160,320,155)
      line(315,157,308,150)
      line(308,150,305,130)
      line(306.5,140,310,143)
      line(290,208,310,165)
      line(291,206,285,200)
      line(308,194,320,197)
     
      fill(255,0,0); //red iris
      noStroke();          
      ellipse(300,175,eyewide/2,50);
      
      fill(0); //black pupil
      ellipse(300,175,eyewide/4,25);
    
      noFill(); //mideye shape
      strokeWeight(4); 
      stroke(0);
      ellipse(300,165,eyewide,100);
     }
   }   
  }
     
  class Scorny{
    constructor(){
      this.t=0.0;
    }
      displaybackground(){
    for(i=0;i<width;i+=4){//I have a reference on Perlin noise
      for(j=0;j<height;j+=4){
        var n=noise(i*0.02,j*0.02,0);
        stroke(n*70,n*70,n*70,255);
        strokeWeight(3);
        rect(i,j,3);
      }
     }
    }
       movingscorn(){
      
         
      if(eyesclosed==false){
      this.t+=1;
      noStroke(); 
      fill(255,255,255,50); 
      var x = this.t; 
      for (i = 0; i <=600; i++){ 
      var y = sin(x)*height; 
      ellipse(i*10,y + height,15,15);
      ellipse(i*10,y-15+height,4,15)
      x+=20; 
      }
    }     
  }
  }





