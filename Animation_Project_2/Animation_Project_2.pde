//Eric Li
//Animation Project 2 - fear of digitalized self
//Thursday Feb 26th 2026

import processing.javafx.*;

//Setting Up the Variables
int counter;
float backvx;
float backvy;
float x;
float y;
float angle;
float time;

//PImage img;

void setup() {
  pixelDensity(1);
  size(1000,500,FX2D);
  stroke(0);
  background(10,0,255);
  counter = 0;
  time = 0;
  backvx = 5;
  backvy = 2;
  x=0;
  y=0;
  
  fill(255,120);
  //img = loadImage("Digital-City.png");
  rect(400,20,50,50,20);
  rect(350,60,60,80,20);
  rect(100,230,100,300,20);
  rect(250,230,70,140,20);
  rect(200,390,70,300,20);
  rect(40,180,100,470,20);
  rect(20,250,70,490,20);
  rect(70,230,30,420,20);
  
  rect(430,110,50,50,20);
  rect(380,180,60,80,20);
  rect(70,200,100,300,20);
  rect(220,300,70,140,20);
  rect(200,350,70,300,20);
  rect(90,400,100,470,20);
  rect(60,450,70,490,20);
  rect(10,430,30,420,20);
  
  rect(10,40,50,50,20);
  rect(80,35,60,80,20);
  rect(200,10,100,300,20);
  rect(250,30,70,140,20);
  rect(350,20,70,300,20);
  rect(400,40,100,470,20);
  rect(450,20,70,490,20);
  rect(430,50,30,420,20);
  
  rect(400,10,50,50,20);
  rect(350,80,60,80,20);
  rect(100,200,100,300,20);
  rect(250,300,70,140,20);
  rect(200,350,70,300,20);
  rect(40,400,100,470,20);
  rect(20,450,70,490,20);
  rect(70,430,30,420,20);
  
  
}

void draw() {
  scale(0.5);
  //image(img,0,0);
  scale(1);
  x=x+1;
  y=y-1;
  backvx = x*0.24;
  backvy = y*0.3;
  counter= counter + 2;
  if (counter>10) {
    x=0;
    y=0;
  }
  drawDigiPpl(600,400);
  
}

void drawDigiPpl(float x, float y) {
  pushMatrix();
  translate(500,425);
  stroke(0);
  strokeWeight(3);
  
  //drawing person
  fill(#FFC1C1);
  rect(485,190,20,80,20);
  ellipse(500,100,170,200);
  rect(411,230,180,220,40);
  popMatrix();
}
  
  
  
  
  
  
