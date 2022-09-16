class Agent {
  float x, y, z, size, noiseStrength, noiseScale, speed;
  PVector pre;
  int[] weights = {2, 6, 10};
  
  Agent() {
    x = random(width);
    y = random(height);
    pre = new PVector(x,y);
    z = random(0.5, 0.8);
    speed = 50;
    noiseStrength = 60;
    noiseScale = 1000;
  }
  
  void display(color col){
    boolean ifNoStroke = (x > width-40) || (x < 40) || (y > height-40) || (y < 40);
    if (ifNoStroke){
      noStroke();
    }
    else {
      stroke(col, 150);
      //strokeWeight(random(1, 10));
      strokeWeight(weights[(int)random(weights.length)]);
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
