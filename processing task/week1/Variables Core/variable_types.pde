void setup()
{
  size(1200, 720);
  noStroke();
}
 
void draw()
{
  //asigned colour
  color skyColour    = color(157, 238, 247);
  color groundColour = color(156, 245, 170);
  color leafColour   = color(82, 144, 97);
  color trunkColour  = color(95, 57, 26);
 
  background(skyColour);
  fill(groundColour);
  rect(0, height/2, width, height/2);
 
  float treeX = 200;
  float treeY = 300;
 
  // Draw first tree
  fill(trunkColour);
  rect(treeX, treeY, 20, 70);
  fill(leafColour);
  ellipse(treeX+10, treeY-30, 70, 90);
 
  // Draw second tree to the right and down a bit
  treeX = treeX + 300;
  treeY = treeY + 30;
  fill(trunkColour);
  rect(treeX, treeY, 20, 70);
  fill(leafColour);
  ellipse(treeX+10, treeY-30, 70, 90);
 
  // Draw third tree to the right and up a bit
  treeX = treeX + 300;
  treeY = treeY - 30;
  fill(trunkColour);
  rect(treeX, treeY, 20, 70);
  fill(leafColour);
  ellipse(treeX+10, treeY-30, 70, 90);
}
