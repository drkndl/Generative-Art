class Agent {
  float x, y, z, size, noiseStrength, noiseScale, speed;
  PVector pre;
  
  Agent() {
    //x = random(width/2 + 125, width);
    x = random(width);
    y = random(height);
    pre = new PVector(x,y);
    z = random(0.5, 0.8);
    speed = 0.5;
    noiseStrength = 60;
    noiseScale = 1000;
  }
  
  void display(color col){
    stroke(col);
    line(pre.x, pre.y, x, y);
    pre.set(x, y);
   
  }
  
  void update(){
    if (x < width/2 - 125){
      noiseStrength = 6;
      noiseScale = 10000;
    }
    else if (x > width/2 + 125){
      noiseStrength = 6;
      noiseScale = 10000;
    }
    else if (x < width/2 + 125){
      noiseStrength = 60;
      noiseScale = 1000;
    }
    else if (x > width/2 - 125){
      noiseStrength = 60;
      noiseScale = 1000;
    }
    float angle = noise(x/noiseScale, y/noiseScale, z/noiseScale) * noiseStrength;
    x += cos(angle) * speed;
    y += sin(angle) * speed; 
    z += 0.005;
  }
  
}
