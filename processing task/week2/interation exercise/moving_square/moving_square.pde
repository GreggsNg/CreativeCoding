

float x, y;

void setup(){
  size(400,400);
  x = height /2;
  y = height /2;
  
  frameRate(60);
}

void draw(){
  
  background(240);
  rect(x ,y, 60, 60);
  
  
}

void keyPressed(){
  
  if (key == 'w'){  
    y = y - 10;
  } else if (key == 's'){
    y = y +10;
  } else if (key == 'a') {
    x = x - 10; // Move left
  } else if (key == 'd') {
    x = x + 10; // Move right
  }
  
  
  
}
