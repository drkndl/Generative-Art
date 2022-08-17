function setup() {
  createCanvas(400, 400);
  colorMode(RGB);
  noLoop();
}

function draw() {
  
  background(0);
  // noFill();
  
  startX=[50, 350, 50, 350];
  startY=[50, 50, 350, 350];
  nCurve=6;
  
  for (let i=0; i < startX.length; i+= 1){
    drawWings(startX[i], startY[i], nCurve);
  }
}

function drawWings(startX, startY, nCurve){
  
  // light blue, lavender, red, orange, yellow, light green
  coloursR=[153,204,255,255,255,144];
  coloursG=[153,153,102,178,255,238];
  coloursB=[255,255,102,102,102,144];
  // stroke(0);
  // stroke(R,G,B,99);
  beginShape();
  vertex(startX, startY);
  
  for (let i = 0; i < nCurve; i+= 1){
    stroke(coloursR[i], coloursG[i], coloursB[i], 80);
    fill(coloursR[i], coloursG[i], coloursB[i], 80);
    bezier(startX, startY, random(width), random(height), random(width), random(height), startX, startY);
   }
  endShape();
  
}
