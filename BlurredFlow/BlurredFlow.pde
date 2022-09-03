Agent[] agents = new Agent[500];

void setup(){
  size(600, 600);
  background(0);

  for (int i=0; i<agents.length; i++){
    agents[i] = new Agent();
  }  
}

void draw(){
  for (Agent agent: agents){
    agent.display();
    agent.update();
  }
  
  if (frameCount == 2000){
    saveFrame("BlurredFlow.png");
  }
}
