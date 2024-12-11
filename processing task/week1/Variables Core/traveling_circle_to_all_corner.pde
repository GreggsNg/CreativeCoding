// setting up variable for location of circle
float x1,y1;
float x2,y2;
float x3,y3;
float x4,y4;
// declaring the 4 dif colour
color cc1;
color cc2;
color cc3;
color cc4;


void setup(){
  size (600,400);
  
  // positions of circle  
  x1 = x2 = x3 = x4 = width / 2;
  y1 = y2 = y3 = y4 = height / 2;
  
  // Assign different colors to each circle
  cc1 = color(0, 0, 0);   
  cc2 = color(255, 0 , 0);   
  cc3 = color(0, 255 , 0);   
  cc4 = color(0 , 0 , 255); 
}

void draw() {
  background(255); // Clear the background with white
  
  // Set the fill color and draw each circle
  fill(cc1);
  ellipse(x1, y1, 100, 60); // First circle
  fill(cc2);
  ellipse(x2, y2, 100, 60); // Second circle
  fill(cc3);
  ellipse(x3, y3, 100, 60); // Third circle
  fill(cc4);
  ellipse(x4, y4, 100, 60); // Fourth circle

  // Move the circles in different directions
  x1 -= 1.5; y1 -= 1;  // Circle 1 moves towards bottom right
  x2 += 1.5; y2 -= 1;  // Circle 2 moves towards top left
  x3 -= 1.5; y3 += 1;  // Circle 3 moves towards top right
  x4 += 1.5; y4 += 1;  // Circle 4 moves towards bottom-left
}
