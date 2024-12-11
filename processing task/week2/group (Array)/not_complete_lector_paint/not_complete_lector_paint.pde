PVector p;

boolean drawCircle = true;

void setup() {
  size(800, 600);
  noStroke();
  p = new PVector(mouseX,mouseY);
}


void draw() {
  fill(255);
  rect(0, 0, width, height);
  
  p.x = mouseX;
  p.y = mouseY;
  
  //fill
  beginShape();
  for (PVector v : clickPoint){
    vertex(v.x, v.y);
  }
  if (drawCircle){
    fill(32,128);
    circle(p.x, p.y, 12);
  }
  drawCircle = false;
  println(clickPoint.size());
}

void mouseMoved() {

  fill(0);
  drawCircle = true;
}
