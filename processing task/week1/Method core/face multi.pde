int w;

void setup() {
  size(1000, 1000);
  background(255);
  
  stroke(0);
  strokeWeight(10);
  noStroke();
  w = 40;
}

void smy(int x, int y, float s) {
  println(s);
  fill(random(100, 255), random(100, 255), random(100, 255));
  stroke(1);
  strokeWeight(2);
  ellipse(width / 2 + x, height / 2 + y, 400 * s, 400 * s);

  fill(5, 5, 5);
  // Adjusting eye positions relative to the main face ellipse
  float eyeOffsetX = 100 * s; // Scaling the horizontal offset
  float eyeOffsetY = 50 * s;  // Scaling the vertical offset
  ellipse(width / 2 + x - eyeOffsetX, height / 2 + y - eyeOffsetY, w * s, w * s);
  ellipse(width / 2 + x + eyeOffsetX, height / 2 + y - eyeOffsetY, w * s, w * s);

  noFill();
  stroke(0);
  strokeWeight(10*s);

  arc(width / 2 + x, height / 2 + y, 250 * s, 250 * s, radians(40), radians(140));
}

void draw() {
  float scale = random(0.1, 1);
  smy(int(random(-500, 500)), int(random(-500, 500)), scale);
}
