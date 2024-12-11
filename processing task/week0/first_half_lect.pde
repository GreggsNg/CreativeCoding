void setup()
{
  size(1280,720);
  background(254,232,134);  // Yellow background colour.
}
//line(200,000,200,400)
//rect(50,20,40,70);
//circle(150,150,70);
//triangle(50,140, 100,140, 75, 210);
//quad(30,20, 150,50, 110,110, 40,90);
void draw()
{
   if (mousePressed){
    background(120,30,70);//background colour
  }
  frameRate(30);
  strokeWeight(2);         // Thick outline
  stroke(222,20,20);        // Dark brown outline colour.
  line(150,100,350,200);
 
  strokeWeight(0.6);       // Thin outline.
  noFill();                // No internal colouring.
  rect(150,190,80,60);
 
  fill(252,135,135);       // Pink internal fill colour.
  ellipse(300,100,40,60);
 
  strokeWeight(1.5);       // Medium outline.
  fill(133,180,117);       // Green internal fill colour.
  triangle(100, 100, 100,140, 75, 210);
 
  noStroke();              // No outline.
  quad(30,50, 150,50, 110,110, 40,90);
}



// Sketch to draw a rectangle that follows the mouse.
void setup()
{
    size(400, 300);
    background(255, 236, 149);
    fill(203, 118, 122);
}
 
void draw()
{
    rect(mouseX, mouseY, 120, 80);
    
    if (mousePressed){
    background(150, 136, 149);
    }
}
