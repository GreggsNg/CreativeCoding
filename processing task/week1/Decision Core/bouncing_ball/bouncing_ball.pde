//bouncing ball

float xPosition;  // -- Horizontal starting position on 'x' axis in coordinate space
float xVelocity; // -- Horizontal speed in x-direction
 
void setup()
{
  size(400,300);
  fill(255,177,8);
  textSize(48);
 
  xPosition = width/2;  // -- Initialise xPosition to centre of sketch
  xVelocity = -2; // -- Initialise speed in x-direction to -2 (moving left)
  int randian = 50;
}
 
void draw()
{
  background(64);
 
 
 
  xPosition = xPosition + xVelocity;  // -- Change position in x on each redraw by velocity in x
 
 // text(message,xPosition,(height/2) + 20);
  
  ellipse (xPosition, height/2, randian*2,randian*2);
  
  if(  xPosition - randian < 0){
     xVelocity =- xVelocity ;
  }
  else if (  xPosition + randian >width ){
    
    xVelocity =- xVelocity ;  
  }
  
}
