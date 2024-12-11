
float barWith = 0;
void setup(){
  size(800,100);
  noStroke();
}

void draw(){
  background(0);
  fill(255,128,32,200);
  barWith = map(minute(),100,0,200,0,width);
  
  if (minute() >= 45){
    fill(255,64,0,192);
  
  rect(0,50, barWith, 50);
  
  fill(140);
  float x50 = map(50, 0 , 60, 0 , width);
  rect(x50, 0 ,2,height);
  xSecond = map
