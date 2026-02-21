//Eric Li
//Complex Shape
//Thursday Feb 19th 2026

size(800,800);
translate(400,400);
background(#A6E9F5,100);
fill(255);

strokeWeight(8);

//largest ring
fill(0);
circle(0,0,300);
fill(255);
circle(6,3,300);

//third ring
fill(0);
circle(0,0,200);
fill(255);
circle(6,3,200);

//south needle
fill(#BABABC);
triangle(-20,0,0,200,20,0);

//north needle
fill(255,0,0);
triangle(-20,0,0,-200,20,0);

//west needle
noFill();
triangle(0,-20,-200,0,0,20);

//east needle
triangle(0,-20,200,0,0,20);

//second ring
fill(0);
circle(0,0,125);
fill(255);
circle(4,2,125);

//last small ring
fill(0);
circle(0,0,65);
fill(255);
circle(4,2,65);
