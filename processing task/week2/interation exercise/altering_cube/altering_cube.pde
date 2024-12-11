float x;
float y;
int red = 128;

void setup() {
    size(400, 400);
    x = width / 2 - 30; // Center x coordinate of the square
    y = height / 2 - 30; // Center y coordinate of the square
}

void draw() {
    background(255); // Clear background
    fill(red, 0,0);
    rect(x, y, 60, 60); // Draw the square
}

void keyPressed() {
    if (key == 'w') {
        y--; // Move up
    } else if (key == 's') {
        y++; // Move down
    } else if (key == 'a') {
        x--; // Move left
    } else if (key == 'd') {
        x++; // Move right
    }
    
    if (key == 'R') {
        red += 10; // Increment red by 10 when 'R' is pressed
        if (red > 255) {
            red = 255; // Cap red at 255
        }
    } else if (key == 'r') {
        red -= 10; // Decrement red by 10 when 'r' is pressed
        if (red < 0) {
            red = 0; // Cap red at 0
        }
    }
}
