float[] diameters;            // -- Declare 'diameters' as an array of floats
 
void setup()
{
  size(400,200);
  fill(180,50,50,100);
  noStroke();
 
  diameters = new float[5];  // -- Set the array size to 5 using the 'new' syntax 
  diameters[0] = 21;         // -- Initialise the 5 values in elements 0, 1, 2, 3, and 4
  diameters[1] = 48;
  diameters[2] = 60;
  diameters[3] = 36;
  diameters[4] = 23;
}
 
void draw()
{
  background(255);
  float xPos = 50;
  // loop
  for (int i=0; i<5; i = i+1)
  {
    // x , y , size
    circle(xPos,100,diameters[i]);
    xPos = xPos + 70;
  }A
}
