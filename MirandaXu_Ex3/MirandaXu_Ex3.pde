int option = 1;

void setup() {
  size(600, 600);
}
void draw(){
  if(option == 1) {
    background(#FFF7E8);
    int x = 50;
    int y = 50;
    for (int a=1; a<145; a+=1) {
      int r = 3*a;
      int g = 2*a;
      int b = 100;
      noFill();
      strokeWeight(2);
      stroke(r, g, b);
      ellipse(x, y, 100, 100);
      x=x+50;
      if (x>550) {
        x=50;
        y=y+50;
      }//end of if loop
    }//end of for loop
  }//end of option 1
  
  else if(option == 2){
    background(0);
    int r = 170;
    int g = 250;
    int b = 255;
    noFill();
    strokeWeight(5);
    for(int d=50; d<width+100; d+=50){
      stroke(r,g,b);
      ellipse(width/2, height/2, d, d);
      g=g-20;
      b=b-10;
      r=r-10;
    }//end of for loop
    strokeWeight(10);
    stroke(100,50,mouseX,mouseY);
    float f=random(600);
    ellipse(300,300,f,f);
  }//end of option 2
  
  else if(option == 3){
    frameRate(15);
    background(255,23,23);
    strokeWeight(2);
    rectMode(CENTER);
    fill(random(255),random(255),250);
    if((mouseX<width/2 && mouseY<height/2)||(mouseX>width/2 && mouseY>height/2)){
      rect(mouseX,mouseY,80,80);
      rect(mouseX+random(-150,150), mouseY+random(-150,150),30,30);
    }//end of 1st if loop
    else if((mouseX>width/2 && mouseY<height/2)||(mouseX<width/2 && mouseY>height/2)){
      ellipse(mouseX,mouseY,80,80);
      ellipse(mouseX+random(-150,150), mouseY+random(-150,150),50,50);
    }//end of 2nd if loop
  }//end of option 3
  
  else if(option == 4){
    noStroke();
    background(255);
    int r=250;
    int g=145;
    int b=145;
    for(int y=0; y<height+50; y=y+50){
      for(int x=0; x<width+50; x=x+50){
        fill(r,g,b);
        rect(x,y,40,40);
        r=r-1;
        g=g-1;
        b=b-1;
      }//end of x for loop      
    }//end of y for loop
  }//end of option 4
  
  else if(option == 5){
    background(255);
    noStroke();
    fill(255,170,120);
    triangle(0,0,600,0,300,300);
    fill(232,183,109);
    triangle(0,0,0,600,300,300);
    fill(255,226,132);
    triangle(0,600,600,600,300,300);
    fill(232,223,109);
    triangle(600,600,600,0,300,300);
    int r=222;
    int g=255;
    int b=143;
    for(int x=0; x<=width; x=x+40){
      strokeWeight(2);
      stroke(r,g,b);
      line(0,600-x,x,600);
      line(600-x,600,600,600-x);
      r=r-20;
      g=g-10;
      b=b+10;    
    }//end of for loop 
    for(int x=0; x<=width; x=x+80){
      strokeWeight(2);
      stroke(r-10,g-10,b-10);
      line(0,x,x,0);
      line(600-x,0,600,x);
      r=r-10;
      g=g-20;
      b=b+20;
    }//end of for loop
    fill(r,g,250,200);
    stroke(r,g,250,150);
    strokeWeight(5);
    ellipse(mouseX,mouseY,70,70);
    line(mouseX-50,mouseX-50,mouseX+50,mouseY+50);
    line(mouseY-50,mouseY-50,mouseY+50,mouseX+50);
  }//end of option 5
  
  else if(option == 6){
    background(255);
    strokeWeight(2);
    rectMode(CENTER);
    noFill();
    for(int x=0; x<600; x=x+100){
      stroke(180,random(150),random(255));
      rect(300,300,x,x);
      stroke(random(150),random(100),180);
      quad(width/2,300-x,300-x,height/2,width/2,300+x,300+x,height/2);
    }//end of for loop    
    noStroke();
    fill(213,189,255,150);
    triangle(0,0,600,0,mouseX,mouseY);
    triangle(0,600,600,600,mouseX,mouseY);
  }//end of option 6
}//end of void draw

  void mousePressed() {
  option++;
  if (option > 6) option = 1; 
}