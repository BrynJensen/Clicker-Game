void intro() {
  theme.play();

  background(tan);

  fill(navy);
  textSize(80);
  text("CLICKER GAME", width/2, height/2 - 50);

  //start game button
  squareButton(width/2 - 100, height/2, 200, 100);

  fill(navy);
  textSize(25);
  text("Start Game", width/2, height/2 + 50);

  //quit button
  squareButton(width - 125, height - 75, 100, 50);
  fill(navy);
  textSize(25);
  text("Quit", width - 75, height - 50);
  
  //options button
  squareButton(width/2 - 50, height/2 + 125, 100, 50);
  fill(navy);
  textSize(20);
  text("Options", width/2, height/2 + 150);
  
}

void introClicks() {
  //start
  if (mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > height/2 && mouseY < height/2 + 100) {
    mode = GAME;
  }

  //exit
  if (mouseX > width - 125 && mouseX < width - 25 && mouseY > height - 75 && mouseY < height - 25) {
    exit();
  }
  
  //options
  if (mouseX > width/2 - 50 && mouseX < width/2 + 50 && mouseY > height/2 + 125 && mouseY < height/2 + 175) {
   mode = OPTIONS; 
  }
}
