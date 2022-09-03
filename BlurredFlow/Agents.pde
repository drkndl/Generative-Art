class Agent {
  float x, y, z, size, noiseStrength, noiseScale, speed;
  PVector pre;
  
  Agent() {
    x = random(width);
    y = random(height);
    pre = new PVector(x,y);
    z = random(0.5, 0.8);
    size = 7;
    speed = 1;
    noiseStrength = 60;
    noiseScale = 5000;
    strokeWeight(size);
  }
  
  void display(){
    boolean ifNoStroke = (x > width-40) || (x < 40) || (y > height-40) || (y < 40);
    if (ifNoStroke){
      noStroke();
    }
    else {
      stroke(#A589E7, 10);
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
