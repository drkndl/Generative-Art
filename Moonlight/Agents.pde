class Agent {
  float x, y, pointx, pointy, z, size, noiseStrength, noiseScale, speed;
  
  Agent() {
    x = random(width/2-100, width/2+100);
    y = random(height/2-300, height/2+300);
    pointx = random(x-50, x+50);
    pointy = random(y-50, y+50);
    z = random(0.5, 0.8);
    speed = 0.5;
    noiseStrength = 600;
    noiseScale = 100;
  }
  
  void display(color col){
    stroke(col, 30);
    line(pointx, pointy, x, y);
  }
  
  void update(){
    float angle = noise(x/noiseScale, y/noiseScale, z/noiseScale) * noiseStrength;
    x += cos(angle) * speed;
    y += sin(angle) * speed; 
    z += 0.005;
    pointx += random(-1, 1);
    pointy += random(-1, 1);
  }
  
}
