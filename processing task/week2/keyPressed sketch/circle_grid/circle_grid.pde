void setup(){
  
  size(1000,1000);
  
}

void draw(){

//  for (int row=5; row<20; row = row+1)
//  {  // <-- commands issued in these braces happen 10 times 
 
//    for (int col=4; col<20; col = col+1)
//    { // <-- commands issued in these braces happen 100 times
//        fill(123,241,210);
        
//        circle(20 + col*40, 20 + row*40, 30);
//    }
//  }
  for (int row=5; row<500; row = row+50)
  {  // <-- commands issued in these braces happen 10 times 
 
    for (int col=4; col<500; col = col+50)
    { // <-- commands issued in these braces happen 100 times
        fill(123,241,210);
        float x = 20 + col + 40;
        float y = 20 + row + 40;
        float d = dist(mouseX, mouseY, x, y);
        float r = 50;
        
        if (d < r/2 ){
          fill (0,255,0);
        }
     circle(x,y,r);
    }
  } 
}
