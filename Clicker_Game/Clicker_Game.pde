//clicker game
//Bryn Jensen
//2-1

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//COLOUR PALLETTE
color maroon = #780000;
color red = #c1121f;
color tan = #fdf0d5;
color navy = #003049;
color blue = #669bbc;

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
color f = red; // target colour
float a = random(0, 2*PI);

//GAME OVER COUNTER
float counter = 0;

//HIGHSCORE
int highscore;

//SLIDER VARIABLES
float sliderY = height/2 + 575;
color slide = #000000;

//SOUND VARIABLES
Minim minim;
AudioPlayer theme, coin, bump, gameover;

//MOUSE STATE TRACKER
boolean isDragging = false;
boolean justPressed = false;

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

  //FONT LOADING
  PFont font = createFont("Strong.ttf", 200);
  textFont(font);
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

  justPressed = false;
}
