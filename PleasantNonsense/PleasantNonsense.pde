color[] colours = {#3FB8AF,#7FC7AF,#DAD8A7,#FF9E9D,#FF3D7F,#3FB8AF,#7FC7AF,#DAD8A7};
int n = 2500;
int posNeg[] = {1, -1};
int randsides = 500;

void setup(){
  
  size(500, 600);
  background(255);
  noFill();
  
  for(int i=0; i<n; i++){
    color col = colours[(int)random(colours.length)];
    polygon(col, randsides);
  }
  
  asemic(180, 270, 15);
  asemic(160, 300, 20);
  asemic(180, 330, 15);
    
}

void draw(){
  if (mouseButton == RIGHT){
    saveFrame("PleasantNonsense3.png");
  }
}

void asemic(float startX, float startY, float syl){
  
  stroke(0);
  strokeWeight(1);   
  
    for (int j = 0; j < syl; j++){
      float endX = random(startX + 5, startX + 15);
      float endY = random(startY - 5, startY + 5);
      bezier(startX, startY, 
            random(startX - 20, startX + 20), random(startY - 20, startY + 20),
            random(startX - 20, startX + 20), random(startY - 20, startY + 20),
            endX, endY);
      startX = endX;
      startY = endY;
  }
}
  
void polygon(color colour, int randsides){
  
  float x = random(width);
  float y = random(height);
 
  noStroke();
  fill(colour, 15);
  
  beginShape();
  for(int i=0; i<randsides; i++){
    vertex(x + posNeg[(int)random(posNeg.length)] * random(0, 40), y + posNeg[(int)random(posNeg.length)] * random(0, 100));
  }
  endShape(CLOSE);
}
