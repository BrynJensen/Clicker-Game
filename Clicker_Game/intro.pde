void intro() {
  theme.play();

  background(200);

  fill(0);
  textSize(80);
  text("CLICKER GAME", width/2, height/2 - 50);

  //start game button
  squareButton(width/2 - 100, height/2 + 100, 200, 100);

  fill(0);
  textSize(25);
  text("Start Game", width/2, height/2 + 150);

  //quit button
  squareButton(width - 125, height - 75, 100, 50);
  fill(0);
  textSize(25);
  text("quit", width - 75, height - 50);
}

void introClicks() {
  if (mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > height/2 + 100 && mouseY < height/2 + 200) {
    mode = GAME;
  }

  if (mouseX > width - 125 && mouseX < width - 25 && mouseY > height - 75 && mouseY < height - 25) {
    exit();
  }
}
