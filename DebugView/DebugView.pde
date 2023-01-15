int expr_space = 15;       // The space between 'code' expressions on the same line
color[] pastels = {#B3CC57,#ECF081,#FFBE40,#EF746F,#AB3E5B,#B3CC57,#ECF081,#FFBE40};     
int[] y_array = {40, 60, 80, 100, 120, 140, 160, 200, 220, 240, 260, 280, 300, 340, 360, 380, 400, 440, 460, 480, 500};    // Code lines' heights
int[] line_start = {25, 45, 65};    // X coordinates from where the code starts in a line, to emulate indents in a code

void setup(){
  
  size(400, 600);
  background(65);
  strokeWeight(9);
  
  // Looping over a code line
  for (int i=0; i<y_array.length; i++){
    
    int num_exp = (int)random(1, 4);                                // Number of expressions / words in a code line
    float line_st;
    
    if (i==0){
      line_st = line_start[0];                               // Since the first line of code usually has the least indent
      print(line_st);
    }
    else {
      line_st = line_start[(int)random(line_start.length)];     // Choosing a random starting indent value for this line
    }
    
    float expr_width = random(15, 75);                              // Choosing a random width for the expression / word
    
    // Looping over the expressions to draw each of them on the same code line
    for (int j=0; j < num_exp; j++){
      
      stroke(pastels[(int)random(pastels.length)]);    
      line(line_st, y_array[i], line_st + expr_width, y_array[i]);
      
      // The next expression / word will start after the current one along with an offset to consider the space between words
      line_st = line_st + expr_width + expr_space;
      expr_width = random(5, 75);
    }   
  }
}

void draw(){
  if (mouseButton == RIGHT){
    saveFrame("DebugView.png");
  }
}
