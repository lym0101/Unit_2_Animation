//Eric Li
//Animation 4
//Wednesday Feb 18 2026

int x;
int y;

void setup() {
  size(500,500);
  x=-64;
  y=-64;
}

void draw() {
  background(255);
  strokeWeight(3.5);
  ellipse(x,y,125,125);
  x=x+1;
  y=y+1;
  if (x>562) {
    x=-62;
  }
  if (y>562) {
    y=-62;
  }
}
