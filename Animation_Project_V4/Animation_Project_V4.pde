//Eric Li
//Animation Project 2 V4
//Mar 9th, 2026

//Fear of Wide-Spread Data collection and the leakage of data randomly

//The Warped glasses in the background shows how messed up it is, and how out of control if a data is not controlled and collected.

import processing.javafx.*;

// Setting Up the Variables
int counter;
int counter1;
int counter2;
int counter3;
float x;
float y;
float x1;
float y1;
float speedX;
float speedY;
float radius;

void setup() {
  pixelDensity(1); //because processing says my screen has high density, so it will revert back to how it should look
  size(800, 800, FX2D);
  stroke(0);
  //initial setup of the variables
  counter = 0;
  counter1 = 0;
  counter2 = 0;
  counter3 = 0;
  x = 0;
  y = 0;
  x1 = width / 2;
  y1 = height / 2;
  radius = 60;
  speedX = 4;
  speedY = 3;
  fill(255, 120);
}

void draw() {
  background(0,0,230,30);  // Clear canvas each frame for animation
  drawBackground();  // Redraw static elements
  x = x + 1;
  y = y - 1;
  counter = counter + 5;
  counter1 = counter1 + 1;
  counter2 = counter2 + 2;
  counter3 = counter3 + 1;
  
  if (counter > 20) {
    counter = 0;
    x = 0;
    y = 0;
  }
  drawBall();
  drawTube(x,y); //This is the tube that sucks the data from the person, not literally sucking the person physically, but sucking up their identities and I used a person to represent that they are kind of being taken away.
  drawDigiPpl(700,200);  // Draw every frame, starting centered-ish and moving
}

void drawBall() {
  x1 = x1 + speedX;
  y1 = y1 + speedY;
  if (x1 + radius > width || x1 - radius < 0) {
    speedX = speedX * -1;
  }
  if (y1 + radius > height || y1 - radius < 0) {
    speedY = speedY * -1;
  }
  // Draw ball
  fill(70, 130, 255, 120);
  noStroke();
  ellipse(x1, y1, radius * 2, radius * 2);
  
  // Draw "DATA" text within ball
  fill(70, 130, 255);
  textAlign(CENTER, CENTER);
  textSize(22);
  text("DATA", x1, y1);
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
  
  beginShape();
  vertex(175,330);
  vertex(220,210);
  vertex(190,90);
  vertex(300,0);
  endShape(CLOSE);
  
  //window panes on the right
  fill(0,1,1,100);
  beginShape();
  vertex(800,800);
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
  vertex(190,90);
  vertex(330,175);
  vertex(210,220);
  vertex(90,190);
  endShape(CLOSE);

  //Data Centres on the left
  drawDataCenter(20,580,140);
  drawDataCenter(100,440,120);
  drawDataCenter(150,310,100);
  drawDataCenter(190,200,80);
  drawDataCenter(230,120,65);


  // Data Centres on the right
  drawDataCenter(600,580,140);
  drawDataCenter(560,440,120);
  drawDataCenter(510,320,100);
  drawDataCenter(500,210,80);
  drawDataCenter(480,120,65);
  
  //mechanism to show the glitching cloud and how sometimes it might not be reliable/
  if (counter1 > 10) {
    counter1 = 0;
  } else {
    drawCloud(400,400);
  }
}

//the section for drawing the black boxes that are supposed to represent data centers
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
  
  if (counter2 < 10){
    fill(255,0,0);
    circle(x+s-7,y+7,8);
  }
  if (counter2 > 10) {
    fill(0);
    circle(x+s-7,y+7,8);
  }
  if (counter2 > 30) {
    counter2 = 0;
  }
}

void drawDigiPpl(float x, float y) {
  pushMatrix();
  translate(x,y);  // Now positions the head at (x, y)
  stroke(0);
  strokeWeight(3);
  
  // Drawing person with local coords centered on head
  scale(0.8);
  fill(#FFC1C1);
  rect(0,175,200,30,40);//right arm
  rect(0,175,-200,30,40);// left arm
  rect(-15,90,20,80,20); // Neck
  ellipse(0,0,170,200); // Head
  if (counter3 < 8) {
    fill(230,0,0);
    ellipse(-30,5,50,30); //Left eye
    ellipse(30,5,50,30); //Right eye
  }
  if (counter3 > 18) {
    fill(0);
    line(-55,5,0,5);
    line(5,5,55,5);
  }
  if (counter3 > 38) {
    counter3 = 0;
  }
  fill(#FFC1C1);
  rect(-70,290,50,200,40); //Left Leg
  rect(25,290,50,200,40); //Right Leg
  rect(-89,130,180,220,40); // Body
  line(-35,40,35,40); //Mouth
  popMatrix();
}

//drawing tube
void drawTube(float x, float y) {
  noStroke();
  pushMatrix();
  translate(680,50);
  rect(x,y,30,180,20);
  rect(x,y,180,30,20);
  popMatrix();
}

void drawCloud(float cx, float cy) {
  pushMatrix();
  translate(cx, cy);

// Cloud body : overlapping ellipses, dark blue interior
  stroke(140, 170, 255, 200);
  strokeWeight(1.5);
  fill(18,28,70,210);
  ellipse(0,0,110,75);
  ellipse(-50,8,90,65);
  ellipse(50,8,90, 65);
  ellipse(-22,-22,80,60);
  ellipse(22,-22,80,60);
  ellipse(0,28,100,55);
  ellipse(-65,22,68,50);
  ellipse(65,22,68,50);

  // Label inside cloud
  noStroke();
  fill(190, 210, 255, 230);
  textSize(13);
  textAlign(CENTER, CENTER);
  text("THE CLOUD", 0, 4);
  popMatrix();
}
