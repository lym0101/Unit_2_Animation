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

PImage img;

void setup() {
  pixelDensity(1);
  size(1000,500,FX2D);
  stroke(0,0,255);
  counter = 0;
  time = 0;
  backvx = 5;
  backvy = 2;
  x=0;
  y=0;
  img = loadImage("Digital-City.png"); // loading in the background, and later will make it move along with the person and a pip absorbing his digital data
}

void draw() {
  scale(0.5);
  image(img,0,0);
  scale(1);
  x=x+1;
  y=y-1;
  backvx = x*0.24;
  backvy = y*0.3;
}

void drawDigiPpl(float x, float y) {
  pushMatrix();
  translate(500,425);
  stroke(0);
  strokeWeight(3);
  
  //drawing person
  ellipse(500,350,40,60);
  popMatrix();
}
  
  
  
  
  
  
