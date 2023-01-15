class Agent {
  float x, y, z, size, noiseStrength, noiseScale, speed;
  PVector pre;
  
  Agent() {
    x = random(width);
    y = random(height);
    pre = new PVector(x,y);
    z = random(0.5, 0.8);
    speed = 1;
    noiseStrength = 6000;
    noiseScale = 100;
  }
  
  void display(color col){
    boolean ifNoStroke = (x > width-40) || (x < 40) || (y > height-40) || (y < 40);
    if (ifNoStroke){
      noStroke();
    }
    else {
      
      if (random(0, 1) <= 0.5) {
        noStroke();
      }
      else {
      stroke(col, 10);
      strokeWeight(0.5);
      }
    }
    line(pre.x, pre.y, x, y);
    pre.set(x, y);
  }
  
  void update(){
    float angle = noise(x/noiseScale, y/noiseScale, z/noiseScale) * noiseStrength;
    x += cos(angle) * speed;
    y += sin(angle) * speed; 
    z += 0.005;
  }
  
}
