void setup() {
  size(512, 512);
  smooth();
  drawClock();
}

void draw() {
  drawClock();
}

void drawClock() {
  background(255);
  translate(width/2, height/2);
  ellipseMode(CENTER);
  fill(0);
  noStroke();
  ellipse(0, 0, 512, 512);
  stroke(255);
  //ellipse(0, 0, 8, 8);
  noStroke();
  fill(255);
  pushMatrix();
    int j = 60;
    for (float i = 0; i < j; i++) {
      fill(255);
      if (i%5 == 0) ellipse(0, -240, 8, 8);
      fill(30, 30, 30);
      if (hour12()*5 + (minute()*5/60) >= i) fill(64, 64, 255);
      ellipse(0, -225, 8, 8);
      fill(30, 30, 30);
      if (minute() >= i) fill(0, 255, 0);
      ellipse(0, -210, 8, 8);
      fill(30, 30, 30);
      if (second() >= i) fill(255, 0, 0);
      else if (second()+1 == i) fill(int((float(millis()%1000)/1000*225)+30), 30, 30);
      ellipse(0, -195, 8, 8);
      rotate((TWO_PI/j));
    }
  popMatrix();
  fill(255);
  ellipse(0, 0, 350, 350);
}

int hour12() {
  if (hour() > 12) return hour()-12;
  return hour();
}

void drawDays() {
  translate(-90, -30);
  for (int x = 0; x < 10; x++) {
    for (int y = 0; y < 3; y++) {
      ellipse(x*20, y*30, 8, 8);
    }
  }
  translate(90, 30);
}

void drawCenter() {
  pushMatrix();
    int j = 7;
    for (float i = 0; i < j; i++) {
      rotate((TWO_PI/j));
      fill(0, 255, 255);
      ellipse(0, -32, 8, 8);
    }
  popMatrix();
  pushMatrix();
    j = 12;
    for (float i = 0; i < j; i++) {
      rotate((TWO_PI/j));
      fill(255, 255, 0);
      ellipse(0, -64, 8, 8);
    }
  popMatrix();
  pushMatrix();
    j = 31;
    for (float i = 0; i < j; i++) {
      rotate((TWO_PI/j));
      fill(255, 128, 0);
      ellipse(0, -96, 8, 8);
    }
  popMatrix();
  
}
