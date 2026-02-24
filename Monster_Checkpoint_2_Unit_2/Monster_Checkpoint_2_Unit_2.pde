//Eric Li
//Processing 11 - Monster - Checkpoint 2 - Animation
//Feb 23 2026

float y;
float vy;
float x;
float squish;
float gravity;
float counter;

void setup() {
  pixelDensity(1);
  size(400,400,P2D);
  y = height / 2;
  vy = 0;
  gravity = 1;
  squish = 1;
  counter = 0;
}

void draw () {
  background(200, 230, 180); //the light green that covers the background and removes
  //Physics!
  vy = vy + gravity;//the velocity in the y direction will be limited by gravity and comes back down
  y = y + vy;// this is the factor propelling it up
  counter = counter + 5; //I am planning to add eyes of some sort (not currently there yet)
  
  int groundlevel = 300; //a variable for the place that the blob returns to or the ground.
  
  squish = lerp(squish, 1.0, 0.15);// this is to return it back to normal after the blob is squished
  
  if (y >= groundlevel) { // if y coordinate is grater than 300 (groundlevel, then it returns to where the shadow is and squeezes itself, and then will return back to its original shape when it is in the air and ready to bounce again
    y = groundlevel;
    vy  = vy * -0.75;
    squish = 1.7;
  } 
  if (counter > 100) {
    counter = 0;
  }
  
  // Draw Blob
  drawBlob(width / 2, y, squish);
}

void drawBlob(float x, float y, float squish) {
  float blobWidth = 100 * squish;
  float blobHeight = 90 / squish;
 
  // Shadow on ground (grey that is constantly there)
  fill(100, 160, 80, 80);
  noStroke();
  ellipse(x, 310, blobWidth * 0.9, 14);

  // Blob body
  fill(80, 200, 90);
  ellipse(x, y, blobWidth, blobHeight);

  // Shiny highlight of the blob
  fill(150, 240, 150, 180);
  ellipse(x - blobWidth * 0.15, y - blobHeight * 0.2, blobWidth * 0.35, blobHeight * 0.25);
  fill(100, 160, 80, 80);
  noStroke();
  ellipse(x, 310, blobWidth * 0.9, 14);

  // Blob body
  fill(80, 200, 90);
  ellipse(x, y, blobWidth, blobHeight);

  // Shiny highlight on the blob
  fill(150, 240, 150, 180);
  ellipse(x - blobWidth * 0.15, y - blobHeight * 0.2, blobWidth * 0.35, blobHeight * 0.25);

  // Mouth [happy smile :)]
  stroke(30, 100, 40);
  strokeWeight(3.5);
  noFill();
  arc(x, y + blobHeight * 0.15, 28, 16, 0, PI);
  noStroke();
}
void mouseClicked() {// for it to go up and fall back down (might add a x direction if time allows)
  vy = -15; //goes upwards
}
