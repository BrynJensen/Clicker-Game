void pause() {

  // PAUSED TEXT
  fill(255);
  stroke(navy);
  strokeWeight(5);
  rect(width/2 - 100, height/2 - 50, 200, 100);
  textSize(50);
  fill(navy);
  text("PAUSED", width/2, height/2);

  // QUIT BUTTON
  squareButton(width/2 - 50, height/2 + 75, 100, 50);

  textSize(50);
  fill(navy);
  textSize(20);
  text("RESTART", width/2, height/2 + 100);


  // OLD PAUSE BUTTON COVER
  fill(tan);
  stroke(tan);
  strokeWeight(6);
  rect(width - 45, 10, 30, 40);

  //NEW PAUSE BUTTON
  fill(tan);
  stroke(navy);
  triangle(width - 38, 15, width -38, 45, width - 15, 30);
  
  //HIGHSCORE DISPLAY
  fill(navy);
  textSize(50);
  text("HIGHSCORE: " + highscore, 400, 300);
}

//play
void pauseClicks() {
  if (mouseX <= width - 15 && mouseX >= width - 45 && mouseY <= 50 && mouseY >= 10) {
    mode = GAME;
  }

  // restart
  if (mouseX <= width/2 + 50 && mouseX >= width/2 - 50 && mouseY <= height/2 + 125 && mouseY >= height/2 + 75) {
    reset();
  }
}
