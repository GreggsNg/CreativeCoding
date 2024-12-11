// -- GLOBALS : declare and initialise global variables
// --   that describe system state - false before interaction:
boolean clearScreen = false;  // -- do we clear the screen?
boolean addText = false;      // -- do we add text?
boolean isRed = false;        // -- do we make text red?
 
// -- SET UP : initialise and do things that don't change :
void setup() {
  size(400, 400);
  background(220);
  textSize(18);
  frameRate(120);
}
 
// -- ACT : do things in here (like draw) based upon system state!
void draw() {
 
  // -- check whether to make text red:
  if (isRed) {
    // -- set fill to red:
    fill(255, 0, 0);
    isRed = false;
  } else {
    fill(64);
  }
 
  // -- check whether to add text:
  if (addText) {
    // -- add text at the mouse position:
    text(key, mouseX, mouseY);
    addText = false;
  }
 
  // -- check whether to clear screen:
  if (clearScreen) {
    // -- clear the screen: random light grey!
    background(int(random(180, 240)));
    // -- reset system state:
    clearScreen = false;
  }
}
 
// -- INTERACT : detect things in these event handling methods
// --   that establish and record system state:
void keyPressed() {
  // -- set variable to record current state:
  addText = true;
 
  // -- set variable to record current state:
  if (key == 'r' || key =='R' || key == 'e') {
    isRed = true;
  }
}
 
void mouseClicked() {
  // -- set variable to record current state:
  clearScreen = true;
}
