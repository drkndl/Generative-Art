function setup() {
  createCanvas(500, 500);
  noLoop();
}

function draw() {
  
  background('#fff0dc');  
  row=[25,75,125,175,225,275,325,375,425,475];
  column=row;
  drawShards(row,column);
}

function drawShards(row,column){
  
  err=50;
  
  // Iterating over the columns
  for (let i=0;i<column.length-1;i+=1){
    
    // Iterating over the rows
    for (let j=0;j<row.length-1;j+=1){
      
      col=random(10,255);
      noStroke();
      fill(col);
        
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
