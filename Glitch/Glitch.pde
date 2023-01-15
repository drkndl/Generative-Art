int n = 10000;
Agent[] agents = new Agent[n];
color[] col = new color[n];
color[] glitch = {#FF01F8, #01FE10, #04FDDB, #FE1D00, #E9FD03, #0070FE, #446945};

void setup(){
  
  size(600, 600);
  background(#fff0dc);
  strokeWeight(8);
  
  for (int i=0; i<agents.length; i++){
    agents[i] = new Agent();
    col[i] = glitch[(int)random(glitch.length)];
  }
}

void draw(){
  for (int i=0; i<n; i++){
    agents[i].display(col[i]);
    agents[i].update();
  }
  
  if (mouseButton == RIGHT){
    saveFrame("Glitch3.png");
  }
}
