// Defining the green square grid properties
int n = 17;
int border = 30;
int gap = 15;
int squareWidth = 25;
int canvasDim = 2 * border + n * squareWidth + (n-1) * gap;

// Defining the properties of the random squares drawn towards the centre
int nRandSquares = 400;
color[] squareColors = {#ff0000, #ff8c00, #ff1493};

void settings() {
    size(canvasDim, canvasDim);
}

void setup(){
  
  background(255);
  noLoop();
  rectMode(CORNERS);
  stroke(#40e0d0);
  strokeWeight(1.2);
  noFill();
  
  // Drawing the grid
  float x = border;
  float y = border;
  
  for (int i=0; i < n; i++){
    x = border;
    for (int j=0; j < n; j++){
      rect(x, y, x + squareWidth, y + squareWidth);
      x = x + squareWidth + gap;
    }
    y = y + squareWidth + gap;
  }
}

void draw(){
  
  for (int i=0; i < nRandSquares; i++){
    
    // Determining square formatting
    color col = squareColors[(int)random(squareColors.length)];
    stroke(col, random(20, 255));
    strokeWeight(2);
    
    // Determining square positioning (should be closer to the centre)
    float w = 250;
    float ex = random(width/2 - w, width/2 + w);
    float why = random(height/2 - w, height/2 + w);
    
    // Drawing the square
    rect(ex, why, ex + squareWidth, why + squareWidth);
  }

  saveFrame("Quadrate_werden_rot.png");
}
