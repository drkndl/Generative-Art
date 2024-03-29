class Agent {
  float x, y, z, size, noiseStrength, noiseScale, speed;
  PVector pre;
  
  Agent() {
    x = random(width);
    y = random(height);
    pre = new PVector(x,y);
    z = random(0.5, 0.8);
    size = 3;
    speed = 1;
    noiseStrength = 60;
    noiseScale = 100;
  }
  
  void display(PGraphics g){
    g.stroke(#030D4F);
    g.strokeWeight(size);
    g.line(pre.x, pre.y, x, y);
    pre.set(x, y);
  }
  
  void update(){
    float angle = noise(x/noiseScale, y/noiseScale, z/noiseScale) * noiseStrength;
    x += cos(angle) * speed;
    y += sin(angle) * speed; 
    z += 0.005;
  }
  
}
