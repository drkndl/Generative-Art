color[] moonlight = {#332553, #536893, #1acfd7, #a2bceb, #a559a2, #000000};
int n = 40;
Agent[] agents = new Agent[n];
color[] col = new color[n];

void setup(){
  size(600, 600);
  background(#fff0dc);
  
  for (int i=0; i<agents.length; i++){
    agents[i] = new Agent();
    col[i] = moonlight[(int)random(moonlight.length)];
  }
}

void draw(){
  for (int i=0; i<n; i++){
    agents[i].display(col[i]);
    agents[i].update();
  }
  
  if (mouseButton == RIGHT){
    saveFrame("Moonlight4.png");
  }
}
