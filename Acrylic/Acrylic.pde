color[] colours = {#FF003C,#FF8A00,#FABE28,#88C100,#00C176,#FF003C,#FF8A00,#FABE28};
int n = 200;
int posNeg[] = {1, -1};
int randsides = 4000;

void setup(){
  size(600, 600);
  background(220);
  noLoop();
}

void draw(){
  for(int i=0; i<n; i++){
    color col = colours[(int)random(colours.length)];
    polygon(col, randsides);
  }
  if (frameCount == 1){
    saveFrame("Acrylic.png");
  }
}

void polygon(color colour, int randsides){
  
  float x = random(width);
  float y = random(height);
 
  noStroke();
  fill(colour, 150);
  
  beginShape();
  for(int i=0; i<randsides; i++){
    vertex(x + posNeg[(int)random(posNeg.length)] * random(0, 40), y + posNeg[(int)random(posNeg.length)] * random(0, 100));
  }
  endShape(CLOSE);
}
