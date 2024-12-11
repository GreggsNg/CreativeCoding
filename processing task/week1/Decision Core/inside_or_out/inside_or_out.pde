//inside or out

float x, y;

void setup() 
{
  size(200,300);

  x = random(50,width-50);
  y = random(50,height-50);
  
  
}
 
void draw()
{
  background(150);
   // Check if the mouse is inside the rectangle
  boolean mouseInRectangle = mouseX > x - 65 && mouseX < x + 65 && mouseY > y - 10 && mouseY < y + 10;
  
  // Check if the mouse is inside the circle
  boolean mouseInCircle = dist(mouseX, mouseY, x, y) < 50;
  
  if (mouseInRectangle) {
    fill(0, 0, 255); // Blue fill if mouse is inside the rectangle
  } else if (mouseInCircle) {
    fill(255, 0, 0); // Red fill if mouse is in the circle but outside the rectangle
  } else {
    fill(255); // White otherwise
  }

  ellipse(x, y, 100, 100); // Circle of radius 50 (diameter 100)

  // Always draw the rectangle
  if (mouseInRectangle) {
    fill(0, 0, 255); // Blue fill if mouse is inside the rectangle
  } else {
    fill(255); // White otherwise
  }
  
  rectMode(CENTER);
  rect(x, y, 130, 20); // Rectangle on top of the circle
}
