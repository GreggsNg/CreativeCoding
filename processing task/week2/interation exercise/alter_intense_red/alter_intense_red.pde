int red = 128;


void setup(){
  size(400,400);
}

void draw(){
  
  background(0);
  fill(red,0,0);
  rect (100,100,60,60);
}


void keyPressed(){
 
  if(key == 'R'){
    red += 20;
    if (red > 255) {
            red = 255; // Cap red at 255
     }   
  }else if (key== 'r'){
    red -= 20;
    if (red < 0) {
            red = 0; // Cap red at 0
        }
  }
}
