//color[] colours = {#090A0D, #F2B705, #BF0404, #2128BF};
color[] colours = {#F2B705, #BF0404, #2128BF};
int borderStroke = 5;

void setup(){
  size(500,500);
  noLoop();
  background(#ffffff);
}

void draw(){
  
  stroke(0);
  strokeWeight(5);
  
  // Create the landscape lines  
  for (int i=0; i<3; i++){
    beginShape();
      fill(colours[i]);
      float start = random(height);
      float end = random(height);
      vertex(0, start);
      vertex(width, end);
      vertex(width, 0);
      vertex(0, 0);
      vertex(0, start);
    endShape(CLOSE);
  }
  
  // Add a sun
  fill(#ff4d01);
  circle(random(width/5, 4*width/5), random(height/7, 3*height/7), 70);
  
  // Add a black border to the image
  fill(0);
  rect(0, 0, width, borderStroke); // Top
  rect(width-borderStroke, 0, borderStroke, height); // Right
  rect(0, height-borderStroke, width, borderStroke); // Bottom
  rect(0, 0, borderStroke, height); // Left
  
  saveFrame("Sunset_in_Dessau6.png");
}
