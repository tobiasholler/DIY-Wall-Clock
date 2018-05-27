import processing.pdf.*;

void setup() {
  beginRecord(PDF, "Blueprints.pdf");
  
  size(450, 450);
  background(255);
  translate(width/2, height/2);
  strokeWeightLine();
  fill(255);
  ellipse(0, 0, 450, 450);
  pushMatrix();
  int STOPS = 60;
  for (int i = 0; i < STOPS; i++) {
    if (i%5==0) {
      //line(0, -128, 0, -225);
      ellipseWithDot(0, -211, 8, 8);
    } else {
      //line(0, -160, 0, -225);
    }
    int a = -164;
    ellipseWithDot(0, a, 8, 8);
    a -= 15;
    ellipseWithDot(0, a, 8, 8);
    a -= 15;
    ellipseWithDot(0, a, 8, 8);
    rotate(TWO_PI/STOPS);
  }
  strokeWeightLine();
  ellipse(0, 0, 300, 300);
  popMatrix();
  strokeWeight(2);
  point(0, 0);
  
  endRecord();
}
void ellipseWithDot(float a, float b, float c, float d) {
  strokeWeightLine();
  ellipse(a, b, c, d);
  strokeWeightPoint();
  point(a, b);
}

void strokeWeightLine() {
  strokeWeight(0.3);
}

void strokeWeightPoint() {
  strokeWeight(0.7);
}
