int n = 10000;   // Number of agents
Agent[] agents = new Agent[n];
color[] colours = {#F3E7D7,#F7D7CD,#F8C7C9,#E0C0C7,#C7B9C5,#F3E7D7,#F7D7CD,#F8C7C9};
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
  
  //if (frameCount == 500){
  //  saveFrame("Aurora2.png");
  //}
}
