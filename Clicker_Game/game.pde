void game() {
  background(0, 0, 255);


  //score display
  fill(255);
  textSize(25);

  text("Score: " + score, width - 50, 20);
  text("Lives: " + lives, 45, 20);

  //display target
  fill(255);
  stroke(0);
  strokeWeight(5);
  image(target, x, y, d, d);

  //movement
  x = x + vx;
  y = y + vy;

  //bouncing
  if (x < d/2 || x > width - d/2) {
    vx = vx * -1;
  }
  if (y < d/2 || y > height - d/2) {
    vy = vy * -1;
  }

  //gameover screen timing
  if (lives <= 0) {
    counter = counter + 1;
    vx = 0;
    vy = 0;
    if (counter == 120) mode = GAMEOVER;
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < d/2 && lives != 0) {
    score = score + 1;
    coin.play();
  } else if (lives != 0) {
    lives = lives - 1;
    bump.play();
  }
}
