
void setup() {
    size(800, 800); // Set canvas size
    background(255); // Set background to white
}

void draw() {
    // Set the fill color based on mouse position
    int redValue = (int) map(mouseX, 0, width, 0, 255); // More red as mouse moves right
    int blueValue = (int) map(mouseY, 0, height, 0, 255); // More blue as mouse moves down
    fill(redValue, 0, blueValue, 100); // Fill with transparency

    noStroke(); // No outline
    ellipse(mouseX, mouseY, 50, 50); // Draw circle at mouse position
}
