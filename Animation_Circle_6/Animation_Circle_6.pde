//Eric Li
//Animation 6
//Thursday Feb 19 2026

int y;
int z;

void setup() {
  size(500,500);
  y=-62;
  z=562;
}

void draw() {
  background(255);
  strokeWeight(3.5);
  circle(125,y,125);
  circle(375,z,125);
  y=y+1;
  z=z-1;
  if (y>563) {
    y=-62;
  }
  if (z<-62) {
    z=562;
  }
}
