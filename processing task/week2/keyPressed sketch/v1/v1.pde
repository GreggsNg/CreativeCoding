void setup(){
  textSize(64);
  size(600,400);
  textSize(20);
  
  frameRate(5);
  
}


void draw(){
  
  //print(key);
  fill(45);
  
  //
  
  float xPosition = random(40,450);
  float yMffff= random(50,450);
  text(key,xPosition,yMffff);
  
  
}

void keyPressed (){
  
  print(key);
  
  
  if (key == '-'){
     background(170,170,170);  
    
  }else{
    
  }
}  
