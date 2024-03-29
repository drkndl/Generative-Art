color[] colours = {#cdb4db, #ffc8dd, #ffafcc, #bde0fe, #a2d2ff};
PVector pre = new PVector(0, 0);
int nlayers = 40;
int nshapes = 150;

void setup(){
  background(255);
  size(500, 500);
  noStroke();
  
  for (int i=0; i<nshapes; i++){
    
    float ex = random(width);
    float why = random(height);
    float arr = random(10, 50);
    //float ex = 250;
    //float why = 250;
    //float arr = 20;
    fill(colours[(int)random(colours.length)], 10);
    
    for (int j=0; j<nlayers; j++){
      polygon(ex, why, arr, 6);
    }
  }
}

void jut(PVector pre, PVector post, int count){
  
  float d = pre.dist(post);
  float mx = (pre.x + post.x)/2;
  float my = (pre.y + post.y)/2; 
  //float angle = random(PI);
  float angle = randomGaussian() * PI;
  float mag = randomGaussian() * d/2.5;
  float jutx = mx + mag * cos(angle);
  float juty = my + mag * sin(angle);
  
  //beginShape();
  vertex(pre.x, pre.y);
  vertex(jutx, juty);
  vertex(post.x, post.y);
  //endShape(CLOSE);
  
  while(count != 6){
    count++;
    PVector newpost = new PVector(jutx, juty);
    jut(pre, newpost, count);
    jut(newpost, post, count);
  }
  
}

void polygon(float x, float y, float radius, int npoints) {
  
  float angle = TWO_PI / npoints;
  // Providing default values to the vertices sx and sy for now
  float sx = 0;
  float sy = 0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    
    if (a > 0){
      pre.set(sx, sy);
    }
    
    sx = x + cos(a) * radius;
    sy = y + sin(a) * radius;    
    
    if (a > 0){
      PVector post = new PVector(sx, sy);
      jut(pre, post, 0);
    }
  }
  endShape(CLOSE);
}

void draw(){
  if (mouseButton == RIGHT){
    saveFrame("Corona3.png");
  }
}
