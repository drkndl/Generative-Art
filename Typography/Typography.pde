import geomerative.*;

// Declare the objects we are going to use, so that they are accesible from setup() and from draw()
RFont f;
RShape grp;
RPoint[] points;

Agent[] agents;
color[] colours = {#107FC9, #0E4EAD, #0B108C, #0C0F66, #07093D};   //blue
color[] col;

void setup(){
  // Initilaize the sketch
  size(600,400);
  frameRate(24);

  // Choice of colors
  background(#fff0dc);
  
  // VERY IMPORTANT: Allways initialize the library in the setup
  RG.init(this);
  
  //  Load the font file we want to use (the file must be in the data folder in the sketch floder), with the size 60 and the alignment CENTER
  grp = RG.getText("genuary", "FreeSans.ttf", 100, CENTER);
  points = obtainPoints();
  
  agents = new Agent[points.length];
  col = new color[points.length];
  
  for (int i=0; i<points.length; i++){
    // Initialize the agents with the initial font points and colours
    float x = random(points[i].x-5, points[i].x+5);
    float y = random(points[i].y-5, points[i].y+5);
    agents[i] = new Agent(points[i].x, points[i].y, x, y);
    col[i] = colours[(int)random(colours.length)];
  }
}

void draw(){
  
  // Set the origin to draw in the middle of the sketch
  translate(width/2, height/2);
  
  // If there are any points
  if(points != null){   
    for(int i=0; i<points.length; i++){
      agents[i].display(col[i]);
      agents[i].update();
    }
  }
  
  saveFrame("typography-#####.png");
}

RPoint[] obtainPoints() {
  // Obtain the typeface points from FreeSans.ttf
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(2);
  points = grp.getPoints();
  return points;
}
