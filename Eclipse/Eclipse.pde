int boxsize = 22;            // Size within which each circle is drawn
int startsize = 15;          // Size of the circle at the beginning of the loop. This size is then altered smoothly throughout the loop.
color[] circColors = {#F2B705, #BF0404, #2128BF};
int cols, rows;
int[] shift = {-2, 0, 2};    // Number of pixels by which the grid of circles of each colour is to be shifted with respect to the grid defined by boxsize. This has to be the same length as the number of colours!

void setup(){
  
  size(600, 600);
  noLoop();
  noStroke();
  ellipseMode(CENTER);
  
  // Initialize columns and rows
  cols = width/boxsize;
  rows = height/boxsize;
  
  // Background colour
  background(#000000);
}

void draw(){
  
  // Iteratively draw grid of circles for each colour 
  for (int i = 0; i < circColors.length; i++){
    CircField(circColors[i], startsize, shift[i]);
  }
  
  saveFrame("Eclipse.png");
}

void CircField(color colour, int startsize, int move){
  
  int ss = startsize;
  // Randomly increases or decreases the size of the circle by 1
  float[] rand_size = {-1, 1};
  
  // Begin loop for columns
  for (int i = 1; i < cols; i++) {
    // Begin loop for rows
    for (int j = 1; j < rows; j++) {
      
      // Scaling up to draw a rectangle at (x,y)
      int x = i * boxsize + move;
      int y = j * boxsize + move;
      
      fill(colour);
      
      // For every column and row, a circle is drawn at an (x,y) location scaled and sized by ss.
      circle(x, y, ss);
      
      // Smoothly increase or decrease circle size by 1 for the next iteration
      ss += rand_size[(int)random(rand_size.length)];
      
      // If circle size is too big, start over with the initial circle size from the next iteration
      if ((ss >= 18)){
        ss = startsize;
      }
    }
  }
}
