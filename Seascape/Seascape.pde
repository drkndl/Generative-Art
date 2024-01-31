void setup(){
  
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
  background(#FFFFFF);
  noStroke();
  noLoop();
}

void draw(){
  drawSea();
  drawSky();
  saveFrame("seascape6.png");
}

void drawSky(){
  
  color base=color(10, 70, 80);   // Base colour using which further mixing takes place
  int nsky = 100000;               // No. of strokes to draw the sky
  
  for (int i=0; i<nsky; i++){
    
    // For each stroke, choose a random width and a random height from the top 2/3 of canvas
    float wi = random(width);
    float he = random(2*height/3);
    
    // Scale factor to introduce a gradient in the sky based on height
    float heightScale = he / height * 0.8;
    
    // h, s, b are variances in the hue, saturation and brightness respectively
    // The variances are affected by the scale factor
    float h = 0 / heightScale;
    float s = 0 / heightScale;
    float b = 15 / heightScale;
    // Define stroke colour
    stroke(chooseColor(base, random(-h, h), random(-s, s), random(-b, b)), 3);
    
    // Draw the line
    line(wi, he, wi+random(-70, 70), he+random(-15, 15));
    strokeWeight(random(10, 20));
  }
  
}

void drawSea(){
  
  color base=color(235, 80, 50);     // Base colour using which further mixing takes place
  float h = 10;                      // Hue variance factor (constant with height)
  float s = 25;                      // Saturation variance factor (constant with height)
  float b = 25;                      // Brightness variance factor (constant with height)
  int nsea = 50000;                  // No. of strokes to draw the sky
  
  for (int i=0; i<nsea; i++){
    
    // Define stroke colour
    stroke(chooseColor(base, random(-h, h), random(-s, s), random(-b, b)), 20);
    
    // For each stroke, choose a random width and a random height from the bottom 1/3 of canvas
    float wi = random(width);
    float he = random(2*height/3, height);
    
    // Draw the line
    line(wi, he, wi+random(-100, 100), he+random(-25, 25));
    strokeWeight(random(7, 10));
  }
  
}

color chooseColor(color base, float hv, float sv, float bv){
  
  // From @sighack
  // https://sighack.com/post/procedural-color-algorithms-color-variations
  float new_hue = (hue(base) + hv) % 360;
  float new_sat = constrain(saturation(base) + sv, 0, 100);
  float new_bri = constrain(brightness(base) + bv, 0, 100);
  return color(new_hue, new_sat, new_bri);
  
}
