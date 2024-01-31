class Agent {
  float x, y, pointx, pointy, z, size, noiseStrength, noiseScale, speed;
  
  Agent(float mainx, float mainy, float xx, float yy) {
    //x = random(width/2-100, width/2+100);
    //y = random(height/2-300, height/2+300);
    //pointx = random(x-50, x+50);
    //pointy = random(y-50, y+50);
    pointx = mainx;
    pointy = mainy;
    x = xx;
    y = yy;
    z = random(0.5, 0.8);
    speed = 0.5;
    noiseStrength = 500;
    noiseScale = 100;
  }
  
  void display(color col){
    //boolean ifNoStroke = (x > pointx-20) || (x > pointx+20) || (y > pointy-20) || (y > pointy+20);
    //if (ifNoStroke){
    //  noStroke();
    //}
    //else {
      stroke(col, 3);
      line(pointx, pointy, x, y);
    //}
  }
  
  void update(){
    float angle = noise(x/noiseScale, y/noiseScale, z/noiseScale) * noiseStrength;
    x += cos(angle) * speed;
    //pointx += cos(angle) * speed + random(-1,1);
    y += sin(angle) * speed; 
    //pointy += sin(angle) * speed + random(-1,1);
    z += 0.005;
    pointx += random(-1, 1);
    pointy += random(-1, 1);
    //pointx = random(x-20, x+20);
    //pointy = random(y-20, y+20);
  }
  
}
