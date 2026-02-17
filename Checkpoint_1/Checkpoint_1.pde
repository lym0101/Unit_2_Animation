//Eric Li
//Animation Video Examples
//Tuesday February 17th

//Build in variables:
//  - mouseX, mouseY: these are the coordinated for your mouse pointer

//define your own variables here:
int x;

void setup() {
  size(300,300);
  x = 0;//set the starting point
} //----- end of setup -----

void draw() {
  background(0,255,0);
  strokeWeight(mouseX);
  fill(mouseY);
  line(150,150,x,mouseY);
  ellipse(x,mouseY,100,100);
  line(x,mouseY,mouseX,300);
  x = x+10;
} // ----- end of drawing -----
