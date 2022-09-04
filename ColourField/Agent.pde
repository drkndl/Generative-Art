class Agent {
  float x, y, z, size, noiseStrength, noiseScale, speed;
  
  Agent() {
    x = random(width);
    y = random(height);
    z = random(0.5, 0.8);
    size = 100;
    speed = 5;
    noiseStrength = 60;
    noiseScale = 5000;
    strokeWeight(size);
  }
  
  void display(float lx, float ly, color colour){
    stroke(colour, 5);
    line(lx, ly, x, y);
  }
  
  void update(){
    float angle = noise(x/noiseScale, y/noiseScale, z/noiseScale) * noiseStrength;
    x += cos(angle) * speed;
    y += sin(angle) * speed; 
    z += 0.005;
  }
  
}
