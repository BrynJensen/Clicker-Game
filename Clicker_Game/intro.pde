void intro() {
  background(255, 0, 0);
  
  fill(255);
  rect(300, 500, 200, 100);
  
  fill(0);
  textSize(25);
  stroke(outline);
  strokeWeight(5);
  text("Start Game", 400, 550);
  
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
  outline = #FFFF00;
  } else {
   outline = #000000; 
  }
  
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
  mode = GAME;
  }
}
