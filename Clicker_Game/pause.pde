void pause() {

  // PAUSED TEXT
  fill(255);
  stroke(0);
  strokeWeight(5);
  rect(width/2 - 100, height/2 - 50, 200, 100);
  textSize(50);
  fill(0);
  text("PAUSED", width/2, height/2);

  // RESTART BUTTON
  if (mouseX <= width/2 + 50 && mouseX >= width/2 - 50 && mouseY <= height/2 + 125 && mouseY >= height/2 + 75) {
    fill(190);
  } else {
    fill(255);
  }
  
  rect(width/2 - 50, height/2 + 75, 100, 50);
  textSize(50);
  fill(0);
  textSize(20);
  text("RESTART", width/2, height/2 + 100);


  // OLD PAUSE BUTTON COVER
  fill(0, 0, 255);
  stroke(0, 0, 255);
  strokeWeight(6);
  rect(width - 45, 10, 30, 40);

  //NEW PAUSE BUTTON
  stroke(255);
  triangle(width - 38, 15, width -38, 45, width - 15, 30);
}

void pauseClicks() {
  if (mouseX <= width - 15 && mouseX >= width - 45 && mouseY <= 50 && mouseY >= 10) {
    mode = GAME;
  }

  if (mouseX <= width/2 + 50 && mouseX >= width/2 - 50 && mouseY <= height/2 + 125 && mouseY >= height/2 + 75) {
    mode = INTRO;
    theme.rewind();
    vx = random(-5, 5);
    vy = random(-5, 5);
    lives = 3;
    score = 0;
    x = width / 2;
    y = height / 2;
  }
}
