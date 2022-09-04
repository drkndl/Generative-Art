int n = 10000;   // Number of agents
Agent[] agents = new Agent[n];
color[] colours = {#F2BB16, #F27405, #A589E7};
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
  
  //if (frameCount == 2000){
  //  saveFrame("BlurredFlow.png");
  //}
}
