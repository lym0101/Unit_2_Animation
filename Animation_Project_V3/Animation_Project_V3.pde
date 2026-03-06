//Eric Li
//Animation Project 2 V2
//Mar 6th, 2026

import processing.javafx.*;

// Setting Up the Variables
int counter;
float x;
float y;
float angle;

void setup() {
  pixelDensity(1);
  size(1000, 900, FX2D);
  stroke(0);
  counter = 0;
  x = 0;
  y = 0;
  fill(255, 120);
}

void draw() {
  background(255);  // Clear canvas each frame for animation
  drawBackground();  // Redraw static elements
  x = x + 1;
  y = y - 1;
  counter = counter + 5;
  
  if (counter > 20) {
    counter = 0;
    x = 0;
    y = 0;
  }
  drawDigiPpl(500,200);  // Draw every frame, starting centered-ish and moving
}

void drawBackground() {
  fill(0);
  beginShape();
  vertex(200,200);
  vertex(300,100);
  vertex(400,300);
  endShape(CLOSE);
}

void drawDigiPpl(float x, float y) {
  pushMatrix();
  translate(x,y);  // Now positions the head at (posX, posY)
  stroke(0);
  strokeWeight(3);
  
  // Drawing person with local coords centered on head
  scale(0.8);
  fill(#FFC1C1);
  rect(-15, 90, 20, 80, 20);  // Neck
  ellipse(0, 0, 170, 200);  // Head
  rect(-70,290, 50, 200, 40); //Left Leg
  rect(25,290, 50, 200, 40); //Right Leg
  rect(-89, 130, 180, 220, 40);  // Body
  popMatrix();
}

//drawing tube
void drawTube(float x, float y) {
  bezier(-15,-50,-15,-50,30,-50,40,-50); //x1,y1,x2,y2,x3,y3,x4,y4
  bezier(-25,-50,-25,-50,30,-50,40,-50);
}
