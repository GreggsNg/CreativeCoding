float x , y;

void setup(){
  size(600,400);
  x = width /2;
  y = height /2;
}

void draw(){
  background(255);
 
  ellipse( x , y ,60,60);  
  x -= 1;
  y -= 1;
}
