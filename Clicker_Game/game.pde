void game() {
  background(tan);


  //score display
  fill(navy);
  textSize(25);

  text("Score: " + score, 70, 40);
  text("Lives: " + lives, 70, 20);
  
  //display target
  fill(f);
  stroke(navy);
  strokeWeight(5);
  circle(x, y, d);

  //pause button
  fill(navy);
  noStroke();
  rect(width - 45, 10, 10, 40);
  rect(width - 25, 10, 10, 40);

  //movement
  x = x + vx;
  y = y + vy;

  //bouncing
  if (x < d/2 || x > width - d/2 - 5) {
    vx = vx * -1;
  }
  if (y < d/2 || y > height - d/2 - 5) {
    vy = vy * -1;
  }

  //gameover screen timing
  if (lives <= 0) {
    counter = counter + 1;
    vx = 0;
    vy = 0;
    theme.pause();
    if (counter == 120) mode = GAMEOVER;
  }
  
    if (score > highscore) {
    highscore = score;
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < d/2 - 5 && lives != 0) {
    score = score + 1;
    coin.rewind();
    coin.play();
    vx = vx * 1.05;
    vy = vy * 1.05;
  } else if (lives != 0 && mouseX <= width - 15 && mouseX >= width - 45 && mouseY <= 50 && mouseY >= 10) {
    mode = PAUSE;
  } else if (lives != 0) {
    background(220, 0, 0);
    lives = lives - 1;
    bump.rewind();
    bump.play();
  }
}
