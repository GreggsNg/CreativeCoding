Ball ball;

void setup(){
  size(800,600);
  ball = new Ball();
}

void draw(){
  background(125);
  ball.draw();
  ball.move();
  
}
