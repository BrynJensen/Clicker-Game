void gameover() {
  background(255, 0, 0);
  fill(255);
  textSize(100);
  text("GAMEOVER", 400, 400);
  //gameover.play();
}

void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
  lives = 3;
  score = 0;
  vx = random(-5, 5);
  vy = random(-5, 5);
  x = width / 2;
  y = height / 2;
  counter = 0;
}
