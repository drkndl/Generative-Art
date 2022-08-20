// Written by Drishika N

function setup() {
  createCanvas(640, 640);
  noLoop();
  colorMode(HSB);
}

function draw() {
  
  background(255);
  // noFill();
  
//   Defining grid limits
  xBorder1=20;
  xBorder2=width-20;
  yBorder1=20;
  yBorder2=height-20;
  
//   Defining largest square size and number of embedded squares
  w=60;
  n=4;
  
//   Defining the square colours
  colours=[color(18, 80, 91), color(178, 100, 63), color(212, 100, 63), color(300, 29, 9), color(257, 52, 61)];
  
  for (let i=xBorder1; i<xBorder2; i+=w){
    for (let j=yBorder1; j<yBorder2; j+=w){
      // Defining the gap between the largest squares
      off=6;
      for (let k=0; k<n; k++){
        colour=random(colours);
        stroke(colour);
        fill(colour);
        rect(i+off,j+off,w-2*off,w-2*off);
        off+=6; // Increasing the offset for the embedded squares
      }
    }
  }
}
