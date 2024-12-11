
void setup() {
  size(600,400);  // setting up your canvise 

}
void draw(){           //void set up 
  if (mousePressed){
    background(0,0,0);//background colour
  }
  
  stroke(0,0,0); // outline colour
  fill(230,5,240); // interior colour shape that will be use, three ,,, == RGB
  rect(250,200,150,100); // colour 0-255

  stroke(0,0,0); // outline colour
  fill(130,5,140); // interior colour shape that will be use, three ,,, == RGB
  rect(mouseX, mouseY,150,100);

  if (mousePressed){
    rect(250,200,150,100);
  } else{
    ellipse(250,200,100,100);
  }
}  
