int n = 6;   // Number of ellipses to be drawn per set
int N = 1;   // Number of sets
color[] colours = {#A70267,#F10C49,#FB6B41,#F6D86B,#339194,#A70267,#F10C49,#FB6B41};

void setup(){
  size(600, 600);
  background(#fff0dc);
  noLoop();
}

void draw(){
  strokeWeight(0.3);
  for (int i=40; i<width; i=i+100){
    for (int j=40; j<height; j=j+100){
      drawCircles(i, j);
    }
  }
}

void drawCircles(int w, int h){
  
  for (int i=0; i<n; i++){
    fill(colours[(int)random(colours.length)], 50);
    ellipse(w + random(0, 10), h + random(0, 10), 20 + random(0, 70), 20 + random(0, 70));
  }
  
  if (frameCount == 1){
    saveFrame("Orbits.png");
  }
}
