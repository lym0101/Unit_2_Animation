//Eric Li
//Animation 3
//Wednesday Feb 18 2026

int x;
int y;

void setup() {
  size(500,500);
  x=0;
  y=0;
}

void draw() {
  background(255);
  strokeWeight(3.5);
  ellipse(250,250,x,y);
  x=x+1;
  y=y+1;
  if (x>708) {
    x=0;
  }
  if (y>708) {
    y=0;
  }
}
  
