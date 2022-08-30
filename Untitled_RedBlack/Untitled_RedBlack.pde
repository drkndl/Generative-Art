// A recreation of Georg Nees's "Untitled Red Black"
// By Drishika N (@drkndl)

float w, h, x, y;
float nx, ny, r;

void setup(){
  size(500, 650);
  background(#d16557);
  noLoop();
}

void draw(){
  
  // Defining border widths 
  w = 30;
  h = 30;
  
  // Determining the number of circles to be made for the area discounting the borders
  x = width - 2*w;
  y = height - 2*h;
  r = 25;  // Radius of each circle
  nx = x/(2*r);   // Number of circles horizontally
  ny = y/(2*r);   // Number of circles vertically

  noFill();
  
  // Drawing the lines for each circular region
  for (int i=0; i<nx; i++){
    h = 30;
    for (int j=0; j<ny; j++){      
      // The number of lines to be drawn at each circular region
      // This number should increase from top to bottom and left to right
      // The actual weights such as (i+2) and 4 were chosen through trial and error
      float n = (i+2)*(j+1)+4;
      // Draws the lines at the circular region (w+r, h+r)
      shapeMaker(w+r, h+r, n, r);
      h += 2*r;
    }
    w += 2*r;
  }
  
  saveFrame("Untitled_RedBlack.png");
}

void shapeMaker(float xcoord, float ycoord, float n, float r){
  beginShape();
  stroke(0);
  // Draw vertices n-1 times and close the shape at the end
  for (int i=0; i<(n-1); i++){
    // Choosing a random angle between 0 to 360 degrees
    float angle = random(0, PI*2);
    // Choosing an (x,y) that lies on the circumference of the circle with centre (xcoord, ycoord) and radius r
    x = xcoord + r * cos(angle);
    y = ycoord + r * sin(angle);
    vertex(x, y);
  }  
  endShape(CLOSE);
}
