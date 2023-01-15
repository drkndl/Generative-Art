int n = 40;
Agent[] agents = new Agent[n];
color[] colours = {#107FC9, #0E4EAD, #0B108C, #0C0F66, #07093D};
color[] col = new color[n];

void setup(){
  size(600, 600);
  background(#fff0dc);
  
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
  
  if (mouseButton == RIGHT){
    saveFrame("Soliloquy_in_Blue2.png");
  }
}
