house drawing1;
ting drawing2;
ting2 drawing3;
buttons btn;

float drawingnr = 0;

void setup() {
  size(600, 600);
  drawing1 = new house();
  drawing2 = new ting();
  drawing3 = new ting2();
  
  btn = new buttons();
  textSize(20);
}
 
void draw() {
  print(drawingnr);
  background(0);
  
  if (drawingnr == 1){ drawing1.display(); }
  if (drawingnr == 2){ drawing2.display(); }
  if (drawingnr == 3){ drawing3.display(); }
  btn.display();
  
} 




/////////////////////////////////////////////
class house{
  void display(){
  //canvas
    fill(80,150,255);
    rect(50,100,500,450);
  //canvas
    fill(100,150,100);
    rect(50,450,500,100);//lawn
    fill(255,255,255);
    stroke(3);
    fill(232,182,152);
    rect(150,240,300,300);//house
    fill(255,0,0);
    triangle(150, 240, 450, 240, 300, 120);//roof
    fill(255,255,255);
    rect(270,440,60,100);//door
    ellipse(323,490,2,2); //doorknob
    rect(205,300,50,50);//window1
    line(230,300,230,350);
    line(205,325,255,325);
    rect(355,360,50,50);//window2
    line(380,360,380,410);
    line(355,385,405,385);
  }
}
/////////////////////////////////////////////
class ting{
  void display(){
  //canvas
    fill(232,182,152);
    rect(50,100,500,450);
  //canvas
    fill(255,255,255);
    stroke(3);
    ellipse(300,325,400,400); 
    fill(80,150,255);
    ellipse(300,325,275,275);
    fill(0,0,0);
    ellipse(300,325,100,100); 
    fill(255,255,255);
    ellipse(300-30,325-30,10,10); 
  }
}
/////////////////////////////////////////////
class ting2{
  void display(){
  //canvas
    fill(80,150,255);
    rect(50,100,500,450);
  //canvas
    
    fill(255,167,13);
    ellipse(350,325,300,200);
    triangle(125, 225, 125, 425, 200, 325);//roof
    ellipse(450,300,20,20); 
    fill(255,255,255);
    ellipse(450,300,10,10); 
    
    
    
  }
}
/////////////////////////////////////////////
class buttons {
  float x1 = 200; //værdier til menukasser
  float x2 = 275;
  float x3 = 350;
  float y = 35;
  float w = 50;
  float h = 50;
  
  void display(){
   
//header
    fill(100,100,150);
    textAlign(CENTER);
    text("Click the buttons to see some pretty pictures",300,25);
    textAlign(LEFT);
    
//drawing1
    fill(100,100,150);
    if(mouseX>x1 && mouseX<x1+w && mouseY>y && mouseY<y+h) { fill(120,120,150);}
    rect(x1,y,w,h); //kasse 2
    fill(0,0,0);
    text("1",x1+w/2-5,y+h/2+5);
    if(mousePressed && mouseX>x1 && mouseX<x1+w && mouseY>y && mouseY<y+h) {  drawingnr = 1; }
    fill(100,100,150);

//drawing2
    fill(100,100,150);
    if(mouseX>x2 && mouseX<x2+w && mouseY>y && mouseY<y+h) { fill(120,120,150);}
    rect(x2,y,w,h); //kasse 2
    fill(0,0,0);
    text("2",x2+w/2-5,y+h/2+5);
    if(mousePressed && mouseX>x2 && mouseX<x2+w && mouseY>y && mouseY<y+h) {  drawingnr = 2; }
    fill(100,100,150);    
    
//drawing3
    fill(100,100,150);
    if(mouseX>x3 && mouseX<x3+w && mouseY>y && mouseY<y+h) { fill(120,120,150);}
    rect(x3,y,w,h); //kasse 2
    fill(0,0,0);
    text("3",x3+w/2-5,y+h/2+5);
    if(mousePressed && mouseX>x3 && mouseX<x3+w && mouseY>y && mouseY<y+h) {  drawingnr = 3; }
    fill(100,100,150);    
    
}
}
/////////////////////////////////////////////