class Agent {
  float x, y, z, size, noiseStrength, noiseScale, speed;
  
  Agent() {
    x = random(width);
    y = random(height);
    z = random(0.5, 0.8);
    speed = 0.7;
    noiseStrength = 60;
    noiseScale = 100;
  }
  
  void display(float pointx, float pointy, color col){
    stroke(col);
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
