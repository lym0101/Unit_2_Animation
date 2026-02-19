//Eric Li
//Animation 2
//Wednesday Feb 18 2026

int x;

void setup() {
  size(500,500);
  x = 562;
}

void draw() {
  background(255);
  strokeWeight(3.5);
  ellipse(x,250,125,125);
  x=x-1;
  if (x<-63) {
    x=562;
  }
}
