// Inspired by Structure de Quadrilateres by Vera Molnar
// Written by Drishika N

function setup() {
  createCanvas(500, 500);
  colorMode(HSB);
  noLoop();
}

function draw() {
  
  background(255);  
  row=[25,75,125,175,225,275,325,375,425,475];
  column=row;
  n=12;   // No.of times the quads will be drawn at each position
  drawBoxes(row,column,n)
}

function drawBoxes(row,column,n){
  
  noFill();
  err=22;
  colours=[color(18, 80, 91, 0.9), color(178, 100, 63, 0.9), color(212, 100, 63, 0.9), color(300, 29, 9, 0.9), color(257, 52, 61, 0.9)];
  
  // Iterating over the columns
  for (let i=0;i<column.length-1;i+=1){
    
    // Iterating over the rows
    for (let j=0;j<row.length-1;j+=1){
      
      stroke(random(colours));
      // Drawing multiple random boxes in the given position
      for (let t=0;t<n;t++){
        
        x1=random(row[j]-err,row[j]+err);
        y1=random(column[i]-err,column[i]+err);

        x2=random(row[j+1]-err,row[j+1]+err);
        y2=random(column[i]-err,column[i]+err);

        x3=random(row[j+1]-err,row[j+1]+err);
        y3=random(column[i+1]-err,column[i+1]+err);

        x4=random(row[j]-err,row[j]+err);
        y4=random(column[i+1]-err,column[i+1]+err);

        quad(x1,y1,x2,y2,x3,y3,x4,y4);
      }      
    } 
  }
}
