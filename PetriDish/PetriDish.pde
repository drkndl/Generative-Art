int n = 60;   // Number of ellipses to be drawn per set
int N = 4000;   // Number of sets
color[] colours = {#4A1B8F,#732C96,#AA1887,#E634A4,#F778C9,#4A1B8F,#732C96,#AA1887};
int[] xcoords = {200, 350, 500};
int[] ycoords = {300, 400, 250};

void setup(){
  size(600, 600);
  background(#fff0dc);
  noLoop();
  noStroke();
  
}

void draw(){
  
  //for (int i=140; i<width-100; i=i+100){
  //  for (int j=140; j<height-100; j=j+100){
  //    drawCircles(i, j, colours[(int)random(colours.length)]);
  //  }
  //}
  
  for (int i=0; i<N; i++){
    float x = random(width);
    float y = random(height);
    if (sq(x-width/2) + sq(y-height/2) <= sq(250)){
      drawCircles(x, y, colours[(int)random(colours.length)]);
    }
    else{
      continue;
    }
    //drawCircles((int)xcoords[(int)random(xcoords.length)], (int)ycoords[(int)random(ycoords.length)], colours[(int)random(colours.length)]);
  }
  
  saveFrame("PetriDish.png");
}

void drawCircles(float w, float h, color col){
  
  for (int i=0; i<n; i++){
    //float randStroke = random(0, 1);
    //if (randStroke > 0.95){
    //  stroke(0, 100);
    //  strokeWeight(0.3);
    //}
    //else{
    //  noStroke();
    //}
    fill(col, 1);
    float randr1 = random(0, 5);
    float randr2 = random(0, 5);
    float randw = random(2, 15);
    float randh = random(2, 15);
    ellipse(w + randr1, h + randr2, 2 + randw, 2 + randh);
  }
}
