void game() {
  background(0, 0, 255);


  //score display
  fill(255);
  textSize(25);

  text("Score: " + score, 60, 40);
  text("Lives: " + lives, 60, 20);

  //display target
  fill(255);
  stroke(0);
  strokeWeight(5);
  image(target, x, y, d, d);

  //pause button
  fill(255);
  noStroke();
  rect(width - 45, 10, 10, 40);
  rect(width - 25, 10, 10, 40);

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
    theme.pause();
    if (counter == 120) mode = GAMEOVER;
  } else {
    
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < d/2 && lives != 0) {
    score = score + 1;
    coin.rewind();
    coin.play();
  } else if (lives != 0 && mouseX <= width - 15 && mouseX >= width - 45 && mouseY <= 50 && mouseY >= 10) {
    mode = PAUSE;
  } else if (lives != 0) {
    lives = lives - 1;
    bump.rewind();
    bump.play();
  }
}
