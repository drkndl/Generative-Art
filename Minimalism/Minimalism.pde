int narcs = 5;

void setup(){
  size(500, 500);
  background(#E8DCB8);
  strokeWeight(1);
  noFill();
  noLoop();
}

void draw(){
  for (int i=0; i<narcs; i++){
    //strokeWeight(random(0.5, 2));
    arc(random(200, width-200), random(200, height-200), random(200), random(200), random(0, PI/2), random(PI, 2*PI));
  }
  
  saveFrame("minimalism3.png");
}
