
float  angle;

void setup(){
  size(400,400,P3D);
  frameRate(240);
}

void draw(){
  background(100);
  translate(width/2, height/2);
  rotateY(angle);
  fill(100,220,255);
  rect(-100,-100,200,200);
  fill(0);
  rect(-50,-50,100,100);
  angle+=0.01;
}
