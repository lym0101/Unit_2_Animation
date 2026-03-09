//Eric Li
//Animation Project 2 V2
//Mar 9th, 2026

import processing.javafx.*;

// Setting Up the Variables
int counter;
float x;
float y;
float angle;

void setup() {
  pixelDensity(1);
  size(800, 800, FX2D);
  stroke(0);
  counter = 0;
  x = 0;
  y = 0;
  fill(255, 120);
}

void draw() {
  background(0,0,230,30);  // Clear canvas each frame for animation
  drawBackground();  // Redraw static elements
  x = x + 1;
  y = y - 1;
  counter = counter + 5;
  
  if (counter > 20) {
    counter = 0;
    x = 0;
    y = 0;
  }
  drawTube(500,200);
  drawDigiPpl(200,200);  // Draw every frame, starting centered-ish and moving
}

void drawBackground() {
  fill(0); //drawing data centres to show it sucking the information in.
  beginShape();
  line(0,800,300,0);
  line(800,800,500,0);
  endShape(CLOSE);
  
  fill(0,1,1,100);
  beginShape();
  vertex(0,800);
  vertex(0,350);
  vertex(72,600);
  endShape(CLOSE);
  
  beginShape();
  vertex(0,350);
  vertex(60,260);
  vertex(130,450);
  vertex(76,607);
  endShape(CLOSE);
  beginShape();
  vertex(0,350);
  vertex(60,260);
  vertex(130,450);
  vertex(76,607);
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
  stroke(0,100);
  rect(x,y,30,180,20);
  rect(x,y,180,30,20);
}
