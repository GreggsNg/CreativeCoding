
int rotating  = 0;

void setup(){
  size(600,600);
}

void draw(){
  rotating ++;
  background(255);
  stroke(0);
  fill(155,0,0);
  rectMode(CENTER);
  
  
  translate(width/2, height/2);
  scale(0.5);
  rotate(rotating); 
  rect(0,0,200,200);
  
  
  translate(300, 0);
  rotate(-rotating);
  rect(0,0,200,200);
  

}
