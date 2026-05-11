void options() {
  background(200);

  //options text
  fill(0);
  textSize(100);
  text("Options", width/2, height - 700);

  // TARGET CHANGE BUTTONS
  //MIDDLE
  fill(255);
  squareButton(width/2 - 75, height/2 - 150, 150, 150);
  fill(255, 0, 0);
  circle(width/2, height/2 - 75, 125);

  //RIGHT
  fill(255);
  squareButton(width/2 + 125, height/2 - 150, 150, 150);
  fill(0, 255, 0);
  circle(width/2 + 200, height/2 - 75, 125);

  //LEFT
  fill(255);
  squareButton(width/2 - 275, height/2 - 150, 150, 150);
  fill(0, 0, 255);
  circle(width/2 - 200, height/2 - 75, 125);

  //OK BUTTON
  squareButton(width/2 + 125, height - 200, 150, 50);
  fill(0);
  textSize(25);
  text("OK", width - 200, height - 175);

  //INDICATOR
  fill(f);
  circle(width/2, height - 175, d);

  //SLIDER
  stroke(0);
  strokeWeight(3);

  //SLIDER SHAPE
  line(width/2 - 200, height/2 + 175, width/2 - 200, height/2 + 275);
  
  strokeWeight(2);
  fill(slide);
  stroke(0);
  circle(width/2 - 200, sliderY, 12);

  //SLIDER CLICKED
  if (mouseX > width/2 - 215 && mouseX < width/2 - 185 && mouseY > height/2 + 175 && mouseY < height/2 + 275 && justPressed == true){
   sliderY = mouseY;
  }
  
  //SLIDER DRAGGED
  if (isDragging == true && mouseY > height/2 + 175 && mouseY < height/2 + 275) {
   sliderY = mouseY; 
  }
  
  
}

void optionsClicks() {
  //OK
  if (mouseX > width/2 + 125 && mouseX < width/2 + 275 && mouseY > height - 200 && mouseY < height - 150) {
    mode = INTRO;
  }

  //MIDDLE CHANGE CLICKED
  if (mouseX > width/2 - 75 && mouseX < width/2 + 75 && mouseY > height/2 - 150 && mouseY < height/2) {
    f = #FF0000;
  }

  //RIGHT CHANGE CLICKED
  if (mouseX > width/2 + 125 && mouseX < width/2 + 275 && mouseY > height/2 - 150 && mouseY < height/2) {
    f = #00FF00;
  }

  //LEFT CHANGE CLICKED
  if (mouseX > width/2 - 275 && mouseX < width/2 - 125 && mouseY > height/2 - 150 && mouseY < height/2) {
    f = #0000FF;
  }
}
