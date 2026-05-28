void gameover() {
  background(red);
  fill(255);
  textSize(100);
  text("GAMEOVER", 400, 400);

  //highscore
  textSize(50);
  text("HIGHSCORE: " + highscore, 400, 525);
}

void gameoverClicks() {
  reset();
}
