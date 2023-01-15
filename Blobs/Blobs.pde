int n = 60;   // Number of ellipses to be drawn per set
int N = 1;   // Number of sets
color[] colours = {#4A1B8F,#732C96,#AA1887,#E634A4,#F778C9,#4A1B8F,#732C96,#AA1887};

void setup(){
  size(600, 600);
  background(#fff0dc);
  noLoop();
  //noStroke();
}

void draw(){
  for (int i=40; i<width; i=i+100){
    for (int j=40; j<height; j=j+100){
      drawCircles(i, j, colours[(int)random(colours.length)]);
    }
  }
}

void drawCircles(int w, int h, color col){
  
  for (int i=0; i<n; i++){
    float randStroke = random(0, 1);
    if (randStroke > 0.95){
      stroke(0, 100);
      strokeWeight(0.3);
    }
    else{
      noStroke();
    }
    fill(col, 3);
    float randr1 = random(0, 30);
    float randr2 = random(0, 30);
    float randw = random(20, 50);
    float randh = random(20, 50);
    ellipse(w + randr1, h + randr2, 20 + randw, 20 + randh);
  }
}
