void reset() {
  lives = 3;
  score = 0;
  a = random(0, 2*PI);
  vx = 2*cos(a);
  vy = 2*sin(a);
  x = width / 2;
  y = height / 2;
  counter = 0;
  theme.rewind();
  mode = INTRO;
}

void tactile(float x, float y, float w, float h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(190);
  } else {
    fill(255);
  }
}

void squareButton(float x, float y, float w, float h) {
  tactile(x, y, w, h);
  strokeWeight(5);
  stroke(navy);
  rect(x, y, w, h);
}
