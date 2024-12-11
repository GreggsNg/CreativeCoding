float[][] diameters;      // Declare a 2D array of floats
 
void setup()
{
  size(800,800);
  fill(180,50,50,100);
  noStroke();
 
  diameters = new float[100][100];
  for (int row=0; row<100; row=row+1)
  {
    for (int col=0; col<100; col=col+1)
    {
      diameters[row][col] = col/5.0 + row/15.0;  //random(1,40);
    }
  }
}
 
void draw()
{
  background(255);
 
  for (int row=0; row<100; row = row+1)
  {
    for (int col=0; col<100; col = col+1)
    {
      circle(col*8, row*8,diameters[row][col]);
    }
  }
}
