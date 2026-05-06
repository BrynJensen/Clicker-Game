//clicker game
//Bryn Jensen
//2-1

//6:46 in 6F, also find game over sound

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//IMAGE LOADING
PImage target;

//MODE FRAMEWORK
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//TARGET VARIABLES
float x, y, d; //target position
float vx, vy; //target velocity
int score, lives;

//COLOUR PALLETTE

//GAME OVER COUNTER
float counter = 0;

//SOUND VARIABLES
Minim minim;
AudioPlayer theme, coin, bump;

void setup() {
  size(800, 800, P2D);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
  
  //TARGET INITIALIZATION
  x = width / 2;
  y = height / 2;
  d = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  lives = 3;
  
  //IMAGE LOADING
  target = loadImage("target.png");
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  coin = minim.loadFile("SUCCESS.wav");
  bump = minim.loadFile("FAILURE.wav");
}


void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
