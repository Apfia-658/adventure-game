// Sophia Wu 
// Adventure game
// E Block Alorithms/Data Structures

//map
PImage ground;
PImage rock;
PImage tree;
PImage ostrich;
PImage wizard;
PImage reap;
Map map = new Map();
int scale = 100;
//hero
Hero hero = new Hero(scale*0.7, scale*9, scale*9);
PImage adventurer;
float speedFast = 5;
float speedSlow = 2;
float speed;

void setup() {
  size (900, 900);
  smooth();
  background(#03201c);
  //map images/load in
  ground = loadImage("ground.png");
  rock = loadImage("rock.png");
  tree = loadImage("tree.png");
  ostrich = loadImage("ostrich.png");
  wizard = loadImage("wizard.png");
  reap = loadImage("reap.png");
  map.drawMap(scale);
  //make adventurer
  adventurer = loadImage("hero.png");
  hero.setLocation(scale/2, scale/2);
}

void draw() {
  map.drawMap(scale);
  hero.display();
  //finds whether terrain is slow or fast
  if (map.slow(hero.getX(), hero.getY()) == true) {
    speed = speedSlow;
  } else {
    speed = speedFast;
  }
  
  
}

void keyPressed() {
  //move wasd directions
  if (key == 'w' || key == 'a' || key == 's' || key == 'd') {
    hero.move(key, speed);
  }
}
