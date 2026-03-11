//Eric Li
//Animation Project 2 V4
//Mar 9th, 2026

//Fear of Wide-Spread Data collection and the leakage of data randomly

import processing.javafx.*;

// Setting Up the Variables
int counter;
float x;
float y;

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
  drawTube(700,200);
  drawDigiPpl(700,200);  // Draw every frame, starting centered-ish and moving
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
  vertex(70,250);
  vertex(130,450);
  vertex(74,600);
  endShape(CLOSE);
 
  beginShape();
  vertex(70,250);
  vertex(130,450);
  vertex(176,330);
  vertex(135,170);
  endShape(CLOSE);
  
  beginShape();
  vertex(135,170);
  vertex(175,330);
  vertex(220,210);
  vertex(190,90);
  endShape(CLOSE);
  
  //window panes on the left
  fill(0,1,1,100);
  beginShape();
  vertex(800,0);
  vertex(350,0);
  vertex(600,72);
  endShape(CLOSE);
  
  beginShape();
  vertex(350,0);
  vertex(250,70);
  vertex(450,130);
  vertex(600,74);
  endShape(CLOSE);
 
  beginShape();
  vertex(250,70);
  vertex(450,130);
  vertex(330,176);
  vertex(170,135);
  endShape(CLOSE);
  
  beginShape();
  vertex(170,135);
  vertex(330,175);
  vertex(210,220);
  vertex(90,190);
  endShape(CLOSE);

  //Data Centres on the left
  drawDataCenter(40,580,140);
  drawDataCenter(120,440,120);
  drawDataCenter(170,340,100);
  drawDataCenter(210,260,80);
  drawDataCenter(240,200,65);


  // Data Centres on the right
  drawDataCenter(580,580,140);
  drawDataCenter(540,440,120);
  drawDataCenter(500,340,100);
  drawDataCenter(470,260,80);
  drawDataCenter(440,200,65);
}

void drawDataCenter(float x, float y, float s) { // s = size
  // front side
  fill(20);
  rect(x,y,s,s);

  // top side
  fill(40);
  beginShape();
  vertex(x,y);
  vertex(x+15,y-15);
  vertex(x+s+15,y-15);
  vertex(x+s,y);
  endShape(CLOSE);

  // side
  fill(10);
  beginShape();
  vertex(x+s,y);
  vertex(x+s+15,y-15);
  vertex(x+s+15,y+s-15);
  vertex(x+s,y+s);
  endShape(CLOSE);
}

void drawDigiPpl(float x, float y) {
  pushMatrix();
  translate(x,y);  // Now positions the head at (x, y)
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
  noStroke();
  pushMatrix();
  translate(x,y);
  rect(x,y,30,180,20);
  rect(x,y,180,30,20);
  popMatrix();
}
