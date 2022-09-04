Agent[] agents = new Agent[100];
float lx, ly;
float n=3;     // Number of wisps to draw
PVector[] pos = new PVector[(int)n];
color[] col = {#F2BB16, #F27405, #A589E7};

void setup(){
  size(600, 600);
  background(0);
  
  for (int i=0; i<agents.length; i++){
    agents[i] = new Agent();
  }  
  
  for (int i=0; i<n; i++){
    pos[i] = new PVector(random(100, width-100), random(100, height-100));
  }
}

void draw(){
  for (int i=0; i<n; i++){ 
    for (Agent agent: agents){
      agent.display(pos[i].x, pos[i].y, col[i]);
      agent.update();
    }
  }
  
  if (frameCount == 50){
    saveFrame("ColourField2.png");
  }
}
