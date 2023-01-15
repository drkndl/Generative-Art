// color[] colours = {#A70267,#F10C49,#FB6B41,#F6D86B,#339194,#A70267,#F10C49,#FB6B41};
int n = 200;
Agent[] agents = new Agent[n];
float[] col = new float[n];

void setup(){
  size(600, 600);
  background(255);

  for (int i=0; i<agents.length; i++){
    agents[i] = new Agent();
    col[i] = random(250);
  }  
}

void draw(){
  for (int i=0; i<n; i++){
    agents[i].display(col[i]);
    agents[i].update();
  }
  
  if (frameCount == 7000){
    saveFrame("Wisps.png");
  }
}
