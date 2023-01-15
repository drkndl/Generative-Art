int n = 1000;
Agent[] agents = new Agent[n];
color[] colours = {#F2BBC9, #4971A6, #02732A, #F2BB16, #F27405, #FB0C06, #FFC52C, #A6BD62, #A589E7};
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
    saveFrame("Carnival.png");
  }
}
