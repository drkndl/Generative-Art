class Agent {
  float x, y, z, pointx, pointy, size, noiseStrength, noiseScale, speed;
  
  Agent() {
    x = random(width);
    y = random(height);
    pointx = random(x-30, x+30);
    pointy = random(y-30, y+30);
    z = random(0.5, 0.8);
    speed = 0.5;
    noiseStrength = 600;
    noiseScale = 10;
  }
  
  void display(color col){
    stroke(col, 10);
    //strokeWeight(0.5);
    line(pointx, pointy, x, y);
  }
  
  void update(){
    float angle = noise(x/noiseScale, y/noiseScale, z/noiseScale) * noiseStrength;
    x += cos(angle) * speed;
    y += sin(angle) * speed; 
    z += 0.005;
  }
  
}
