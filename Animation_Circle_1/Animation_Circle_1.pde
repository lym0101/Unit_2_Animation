//Eric Li
//Animation 1
//Wednesday Feb 18th 2026

int y;

void setup() {
  size(500,500);
  y = 0;
  strokeWeight(4.5);
}

void draw() {
  background(255);
  ellipse(250,y,125,125);
  y=y+1;
  if (y>625) {
    y=-63;
  }
}
