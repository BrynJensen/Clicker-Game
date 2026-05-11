void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode == OPTIONS) {
   optionsClicks(); 
  }
  
  isDragging = false;
}

void mousePressed() {
 justPressed = true;
 
 //MOUSE DRAGGED FOR SLIDER IN OPTIONS
 if (mouseX > width/2 - 215 && mouseX < width/2 - 185 && mouseY > height/2 + 175 && mouseY < height/2 + 275) {
 isDragging = true; 
 }
}
