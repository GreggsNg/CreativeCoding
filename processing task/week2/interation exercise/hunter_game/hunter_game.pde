// Global variables
float circleX;
float circleY;
float radius;
color fillColor;

void setup() {
    size(800, 800); // Set canvas size
    resetCircle(); // Initialize the circle
}

void draw() {
    background(255); // White background

    // Check if the mouse is inside the circle
    if (dist(circleX, circleY, mouseX, mouseY) < radius) {
        fill(255, 128, 64); // Highlight color when mouse is over the circle
    } else {
        fill(fillColor); // Default fill color
    }

    // Draw the circle
    ellipse(circleX, circleY, radius, radius);
}

// Mouse click detection
void mousePressed() {
    if (dist(circleX, circleY, mouseX, mouseY) < radius) {
        println("Click"); // Print when clicked
        resetCircle(); // Move the circle to a new position and size
    }
}

// Reset circle to a random position and size
void resetCircle() {
    circleX = random(radius, width - radius); // Ensure circle stays within bounds
    circleY = random(radius, height - radius);
    radius = random(30, 100); // Random radius size
    fillColor = color(random(255), random(255), random(255)); // Random fill color
}
