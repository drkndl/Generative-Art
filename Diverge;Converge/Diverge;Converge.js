function setup() {
  createCanvas(400, 400);
  noLoop();
}

function draw() {
  background(0);
  stroke(255);
  strokeWeight(0.5);
  
// Defining the line y borders and the number of lines
  ny1=50;
  ny2=height-20;
  nlines=15;
  
// Defining the line x borders;
  nx1=20;
  nx2=width-20;
  
// Number of pivots and the corresponding x coordinates
  n=8;
  xcoords=[nx1];
  
  for (let i=1; i<=n; i++){
    xcoords[i] = i * (nx2-nx1)/n;
  }
  xcoords[n+1]=nx2;
  
// Determining the y coordinates for each line
  ycoords=[];
  for (let i=0; i<nlines; i++){
    ycoords[i] = (i+2)*(ny2-ny1)/nlines;
  }
  
// Drawing the lines
  side=[-1, -0.5, 0.5, 1];
  strength=10;
  
  for (let i=0; i<ycoords.length; i++){
    for (let j=1; j<xcoords.length; j++){
      line(xcoords[j-1], ycoords[i] + random(side)*strength, xcoords[j], ycoords[i] + random(side)*strength)
    }
  }
  
}
