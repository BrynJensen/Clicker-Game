//clicker game
//Bryn Jensen
//2-1

//find game over sound, add accuracy based on where clicked on target, multiply accuracy by score for final score
//add custom font, maybe challenge mode with timer and no acceleration (new mode)
//make options screen
//speed still seems random

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
final int OPTIONS = 4;

//TARGET VARIABLES
float x, y, d; //target position
float vx, vy; //target velocity
int score, lives;
float a = random(0, 2*PI);

//COLOUR PALLETTE

//GAME OVER COUNTER
float counter = 0;

//HIGHSCORE
int highscore;

//SOUND VARIABLES
Minim minim;
AudioPlayer theme, coin, bump, gameover;

void setup() {
  size(800, 800, P2D);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
  
  //TARGET INITIALIZATION
  x = width / 2;
  y = height / 2;
  d = 100;
  vx = 2*cos(a);
  vy = 2*sin(a);
  score = 0;
  lives = 3;
  
  //HIGHSCORE INITIALIZATION
  highscore = 0;
  
  //IMAGE LOADING
  target = loadImage("target.png");
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  coin = minim.loadFile("SUCCESS.wav");
  bump = minim.loadFile("FAILURE.wav");
  theme.loop();
  //gameover = minim.loadFile(
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
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode);
  }
}
