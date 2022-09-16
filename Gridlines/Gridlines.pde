color[] colours = {#556270, #4ECDC4, #C7F464, #FF6B6B, #C44D58};
int nsegments = 25; 
int[] nlines = new int[nsegments];  // Number of lines in each segment
float[] heights = new float[nsegments+1];
float[] widths = new float[nsegments+1];

void setup(){
  
  size(500, 650);
  background(100);
  noLoop();
  
  for (int i=0; i<nsegments; i++){
    nlines[i] = (int)random(50, 100);
  }
  
  for (int i=0; i<=nsegments; i++){
    heights[i] = i * height/nsegments;
    widths[i] = i * width/nsegments;
  }
}

void draw(){
  
  for (int i=0; i<nsegments; i++){
    VertBars(nlines[i], heights[i], heights[i+1]);
    HoriBars(nlines[i], widths[i], widths[i+1]);
  }
   
   saveFrame("Gridlines.png");
}

void VertBars(int nl, float h1, float h2){
  
  for (int i=0; i < nl; i++){
    float x = random(0, width);
    stroke(colours[(int)random(colours.length)]);
    strokeWeight(random(1, 5));
    line(x, h1, x, h2);
  }
}

void HoriBars(int nl, float w1, float w2){
  
  for (int i=0; i < nl; i++){
    float y = random(0, height);
    stroke(colours[(int)random(colours.length)]);
    strokeWeight(random(1, 5));
    line(w1, y, w2, y);
  }
}
