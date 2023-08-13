float circleX, circleY;
float circleDiameter = 100;
color circleColor;
float xSpeed = 0;
float ySpeed = 0;
float speedStep = 2;
void setup() {
  size(800, 600);
  circleX = width / 2;
  circleY = height / 2;
  circleColor = color(0, 150, 255);
}
void draw() {
  background(220);
  fill(circleColor);
  circleX += xSpeed;
  circleY += ySpeed;
  if (circleX < circleDiameter / 2 || circleX > width - circleDiameter / 2) {
    xSpeed *= -1;
    circleColor = color(random(255), random(255), random(255));
  }
  if (circleY < circleDiameter / 2 || circleY > height - circleDiameter / 2) {
    ySpeed *= -1;
    circleColor = color(random(255), random(255), random(255));
  } 
  ellipse(circleX, circleY, circleDiameter, circleDiameter);
}
void keyPressed() {
  if (key == 'W' || key == 'w') {
    ySpeed -= speedStep;
    circleColor = color(255, 0, 0); 
  }
  if (key == 'S' || key == 's') {
    ySpeed += speedStep;
    circleColor = color(0, 255, 0); 
  }
  if (key == 'A' || key == 'a') {
    xSpeed -= speedStep;
    circleColor = color(0, 0, 255);  
  }
  if (key == 'D' || key == 'd') {
    xSpeed += speedStep;
    circleColor = color(255, 255, 0);  
  }
}
