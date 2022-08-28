color[] colours = {#F2BBC9, #4971A6, #02732A, #F2BB16, #F27405, #FB0C06, #FFC52C, #A6BD62, #A589E7};

PGraphics bg;
PGraphics mask;

float count = 80; // Number of rectangles and circular masks
PVector[] pos = new PVector[(int)count];

Agent[] agents = new Agent[10];

void setup(){
  size(600, 600);
  background(#fff0dc);
  
  for (int i=0; i<agents.length; i++){
    agents[i] = new Agent();
  }
  
  for (int i=0; i<count; i++){
    pos[i] = new PVector(random(width), random(height));
  }
  
  bg = createGraphics(width, height);
  bg.beginDraw();
  bg.background(#e6d9bd);
  bg.noStroke();  
  for (int i=0; i<count; i++){
    bg.fill(colours[(int)random(colours.length)], 180);
    drawRect(bg, pos[i].x, pos[i].y, random(10,width/4), random(10,width/4), 10);
  }
  bg.endDraw();
  
  mask = createGraphics(width, height);
  mask.beginDraw();
  mask.noStroke();
  //mask.fill(255);
  for (int i=0; i<count; i++){
    mask.circle(pos[i].x, pos[i].y, random(10, width/4));
  }
  mask.endDraw();
}


void draw(){
  bg.beginDraw();
  for (Agent agent: agents){
    agent.display(bg);
    agent.update();
  }
  bg.endDraw();
  
  bg.mask(mask);
  image(bg, 0, 0);
  
  if (frameCount == 2000){
    saveFrame("Rivers.png");
  }
}

void drawRect(PGraphics g, float x, float y, float w, float h, float off){
  g.beginShape();
  g.vertex(x + random(-off, off), y + random(-off, off));
  g.vertex(x + w + random(-off, off), y + random(-off, off));
  g.vertex(x + w + random(-off, off), y + h + random(-off, off));
  g.vertex(x + random(-off, off), y + h + random(-off, off));
  g.endShape(CLOSE);
}
