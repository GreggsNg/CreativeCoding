// Dataset Arrays
String[] dates = {"Day 1", "Day 2", "Day 3", "Day 4", "Day 5", "Day 6", "Day 7", 
                  "Day 8", "Day 9", "Day 10", "Day 11", "Day 12", "Day 13", "Day 14"};
String[] days = {"Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun", 
                 "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"};
String[] proteins = {"C", "B", "P", "F", "E", "Various", "C", 
                     "B", "P", "F", "E", "C", "Various", "B"};
String[] portions = {"M", "L", "M", "S", "M", "L", "L", 
                     "M", "L", "M", "S", "L", "L", "M"};

// Portion Sizes Mapping
float portionSize(String size) {
  if (size.equals("S")) return 50; // Small
  if (size.equals("M")) return 100; // Medium
  return 150; // Large
}

// Protein Colors
color proteinColor(String protein) {
  if (protein.equals("C")) return color(255, 0, 0); // Chicken: Red
  if (protein.equals("B")) return color(0, 255, 0); // Beef: Green
  if (protein.equals("P")) return color(0, 0, 255); // Pork: Blue
  if (protein.equals("F")) return color(255, 255, 0); // Fish: Yellow
  if (protein.equals("E")) return color(255, 165, 0); // Egg: Orange
  return color(128, 0, 128); // Various: Purple
}

void setup() {
  size(800, 600, P3D); // Enable 3D rendering
}

void draw() {
  background(200);
  lights();

  // Translate to center for front view
  translate(width / 2, height / 2 + 100, -200);
  
  // Draw Axes
  stroke(0);
  line(-300, 0, 0, 300, 0, 0); // X-axis (Days)
  line(0, -200, 0, 0, 200, 0); // Y-axis (Portion Size)
  
  // Labels
  fill(0);
  textAlign(CENTER);
  text("Days", 320, 20);
  textAlign(LEFT);
  text("Portion Size", -50, -220);
  
  // Draw 3D bars
  for (int i = 0; i < days.length; i++) {
    float x = map(i, 0, days.length - 1, -300, 300); // Map days to x-axis
    float h = portionSize(portions[i]); // Get height
    color c = proteinColor(proteins[i]); // Get protein color
    
    pushMatrix();
    translate(x, -h / 2, 0); // Move to position
    fill(c);
    noStroke();
    box(30, h, 30); // Draw bar
    popMatrix();

    // Add day and date labels
    pushMatrix();
    translate(x, 10, 0); // Position below the chart
    fill(0);
    textAlign(CENTER);
    text(days[i] + "\n" + dates[i], 0, 0); // Display day and date
    popMatrix();
  }
}
