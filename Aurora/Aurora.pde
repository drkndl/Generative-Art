int n = 300;   // Number of agents
Agent[] agents = new Agent[n];
color[] colours = {#FF003C,#FF8A00,#FABE28,#88C100,#00C176,#FF003C,#FF8A00,#FABE28};
color[] col = new color[n];

void setup(){
  size(600, 600);
  background(255);

  for (int i=0; i<agents.length; i++){
    agents[i] = new Agent();
    col[i] = colours[(int)random(colours.length)];
  }  
}

void draw(){
  for (int i=0; i<n; i++){
    agents[i].display(col[i]);
    agents[i].update();
  }
  
  if (frameCount == 500){
    saveFrame("Aurora2.png");
  }
}
