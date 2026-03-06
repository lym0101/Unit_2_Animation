//Eric Li
//Animation Project 2 V2
//Mar 4th, 2026

import processing.javafx.*;

// Setting Up the Variables
int counter;
float x;
float y;
float angle;

void setup() {
  pixelDensity(1);
  size(1000, 500, FX2D);
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
  // All my building in rectangles, redrawn each frame
  fill(153,64,255,170); // purple buildings on the left
  rect(900, 20, 50, 50, 20);
  rect(850, 60, 60, 80, 20);
  rect(940, 130, 100, 300, 20);
  rect(750, 230, 110, 240, 20);
  rect(720, 290, 90, 300, 20);
  rect(840, 180, 100, 470, 20);
  rect(920, 250, 70, 490, 20);
  rect(670, 330, 80, 420, 20);
  
  fill(255,133,18,160); //orange buildings
  rect(430, 10, 50, 50, 20);
  rect(380, 80, 60, 80, 20);
  rect(170, 195, 100, 200, 20);
  rect(220, 380, 70, 140, 20);
  rect(170, 350, 70, 300, 20);
  rect(90, 170, 100, 470, 20);
  rect(40, 50, 170, 390, 20);
  rect(10, 230, 130, 420, 20);
  
  fill(18,221,255,190); //cyan buildings
  rect(900, 40, 50, 50, 20);
  rect(890, 35, 60, 80, 20);
  rect(200, 10, 100, 300, 20);
  rect(250, 30, 70, 140, 20);
  rect(350, 20, 70, 300, 20);
  rect(940, 40, 100, 470, 20);
  rect(850, 20, 70, 490, 20);
  rect(830, 50, 30, 420, 20);
  
  fill(227,55,118,210); //red buildings
  rect(860, 10, 50, 50, 20);
  rect(350, 80, 60, 80, 20);
  rect(700, 200, 100, 300, 20);
  rect(650, 200, 70, 140, 20);
  rect(230, 50, 70, 300, 20);
  rect(740, 400, 100, 470, 20);
  rect(720, 50, 70, 490, 20);
  rect(770, 30, 30, 420, 20);
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
