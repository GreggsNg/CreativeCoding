int angle = 0;

int u = 0;

void setup(){
  size (500,500,P3D);
}


void draw(){
  angle++;
  u++;
  background(153);
  

  translate(width/2,height/2);
  rotateY(angle);
  stroke(0);
  fill(u,0,0);
  sphere(200);
  
  
}
