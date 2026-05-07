void intro() {
  theme.play();
  
  background(255);
    
  fill(0);
  textSize(80);
  text("CLICKER GAME", width/2, height/2 - 50);
  
  //tactile
  if (mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > height/2 + 100 && mouseY < height/2 + 200) {
  fill(190);
  } else {
   fill(255); 
  }
  
  strokeWeight(5);
  stroke(0);
  rect(width/2 - 100, height/2 + 100, 200, 100);
  
  fill(0);
  textSize(25);
  text("Start Game", width/2, height/2 + 150);

  
  
}

void introClicks() {
  if (mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > height/2 + 100 && mouseY < height/2 + 200) {
  mode = GAME;
  }
}
