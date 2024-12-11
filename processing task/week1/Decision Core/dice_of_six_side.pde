float ran;

void setup() 
{
  size(200, 200);
  fill(0);
  textSize(48);
  textAlign(CENTER);
}

void draw() {
  background(255);
  
  // Generate a new random number in each frame
  ran = random(6);
  
  String message = "hjjj";
  
  // Checking the random value and setting the message accordingly
  if (ran < 1) {
    message = "ONE";
  } else if (ran < 2) {
    message = "TWO";
  } else if (ran < 3) {
    message = "THREE";
  } else if (ran < 4) {
    message = "FOUR";
  } else if (ran < 5) {
    message = "FIVE";
  } else {
    message = "SIX";
  }
  
  text(message, width / 2, height / 2);
}
