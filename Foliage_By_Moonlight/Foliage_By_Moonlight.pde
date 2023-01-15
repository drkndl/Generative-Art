color[] colours = {#A70267,#F10C49,#FB6B41,#F6D86B,#339194,#A70267,#F10C49,#FB6B41};
int n = 1000;
Agent[] agents = new Agent[n];
color[] col = new color[n];

void setup(){
  size(600, 600);
  background(0);

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
  
  if (frameCount == 7000){
    saveFrame("Foliage_By_Moonlight.png");
  }
}
