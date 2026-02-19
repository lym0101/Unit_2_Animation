//Eric Li
//Animation 5
//Thursday Feb 19 2026

int x;
int y;

void setup() {
  size(500,500);
  x=-62;
  y=0;
}

void draw() {
  background(255);
  strokeWeight(3.5);
  circle(x,250,y);
  x=x+5;
  y=y+1;
  if (x>500+(y/2)) {
    x=-62;
    y=0;
  }
}
