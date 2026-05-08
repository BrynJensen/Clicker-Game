void gameover() {
  background(255, 0, 0);
  fill(255);
  textSize(100);
  text("GAMEOVER", 400, 400);

  //highscore
  textSize(50);
  text("HIGHSCORE: " + highscore, 400, 525);


  //gameover.play();
}

void gameoverClicks() {
  reset();
}
