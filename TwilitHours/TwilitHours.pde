int videoScale = 10;
int cols, rows;
int[] xarr, yarr;
int nclouds = 20;
color[] skyColors = {#87CEEB, #CCCCFF, #7DF9FF, #6495ED, #0096FF};
color[] cloudColors = {#800080, #5D3FD3, #E0B0FF, #DA70D6, #BF40BF};

void setup(){
  
  size(300,300);
  noLoop();
  
  // Initialize columns and rows
  cols = width/videoScale;
  rows = height/videoScale;
  
  // Save row and column points into arrays
  xarr = new int[rows];
  yarr = new int[cols];
}

void draw(){
  
  fill(skyColors[(int)random(skyColors.length)]);
  //noStroke();
  stroke(0);
  strokeWeight(0.1);
  
  // Begin loop for columns
  for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {

      // Scaling up to draw a rectangle at (x,y)
      int x = i*videoScale;
      int y = j*videoScale;
      xarr[i] = x;
      yarr[i] = y;
      // For every column and row, a rectangle is drawn at an (x,y) location scaled and sized by videoScale.
      rect(x, y, videoScale, videoScale);
    }
  }
  
  drawSun(xarr, yarr);
  for (int i=0; i<nclouds; i++){
    drawClouds(xarr, yarr, cloudColors[(int)random(cloudColors.length)]);
  }
  
  saveFrame("Twilit_Hours8.png");
}

void drawSun(int[] xarr, int[] yarr){
  
  // Choose a random starting coordinate
  int randx = xarr[(int)random(xarr.length/5, 4*xarr.length/5)];
  int randy = xarr[(int)random(xarr.length/5, 4*xarr.length/5)];
  
  // Define radius of the sun
  int size = 7;
  int sz = size+1;
  
  fill(#FFC300);
  for (int i=randx-sz*videoScale; i<randx+sz*videoScale; i=i+videoScale){
    for (int j=randy-sz*videoScale; j<randy+sz*videoScale; j=j+videoScale){
      
      // If coordinate within or on the circle of above defined radius, plot the pixel
      if ((sq(randx-i) + sq(randy-j) - sq(size*videoScale)) <= 0.0){
        rect(i, j, videoScale, videoScale);
      }
    }
  }
}

void drawClouds(int[] xarr, int[] yarr, color col){
  
  // Choose a random starting coordinate
  int randx = xarr[(int)random(xarr.length)];
  int randy = xarr[(int)random(xarr.length)];
  int n;
  
  fill(col);
  
  for (int j=randy-videoScale; j<randy+2*videoScale; j=j+videoScale){
    
    // To simulate cloud shape, make the middle row of the cloud biggest
    if (j==randy){
      n = (int)random(5, 8);
    }
    else{
      n = (int)random(3, 6);
    }
    
    for (int i=randx-n*videoScale; i<randx+n*videoScale; i=i+videoScale){
    
      // Randomly choose to not plot some pixels to add wispiness to cloud shape
      float c = random(-1,1);
      if (c>0.9){
        continue;
      }
      rect(i, j, videoScale, videoScale);
    }
  }
}
