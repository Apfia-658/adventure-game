// Sophia Wu 
// Adventure game
// E Block Alorithms/Data Structures

//imports
import java.util.*;

//map
PImage ground, rock, tree;
Map map = new Map();
int scale = 100;

//NPCs
PImage ostrich, wizard, reap, arch, pyro;

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
  imageMode(CENTER);

  //map images/load in
  ground = loadImage("ground.png");
  rock = loadImage("rock.png");
  tree = loadImage("tree.png");

  //NPC images
  ostrich = loadImage("ostrich.png");
  wizard = loadImage("wizard.png");
  reap = loadImage("reap.png");
  arch = loadImage("archer.png");
  pyro = loadImage("pyro.png");

  //draws map
  map.drawMap(scale);

  //make adventurer
  adventurer = loadImage("hero.png");
 // hero.setLocation(scale/2, scale/2);
   hero.setLocation(400,400);
}

void draw() {
  background(#03201c);
  //draws map
  map.drawMap(scale);

  //NPCs
  for (NPC npc : map.npcs) {
    npc.display();
  }

  if (hero.intersect() == true) {
    print("intersect!");
    //start NPC convo
  }

  //displays hero @ current loc
  hero.display();

  //finds whether terrain is slow or fast & sets speed accordingly
  if (map.slow(hero.x, hero.y) == true) {
    speed = speedSlow;
  } else {
    speed = speedFast;
  }
}

void keyPressed() {
  //move hero in wasd directions
  if (key == 'w' || key == 'a' || key == 's' || key == 'd') {
    hero.setDirection(key, true);
    hero.move(speed);
  }
}

void keyReleased() {
  if (key == 'w' || key == 'a' || key == 's' || key == 'd') {
    hero.setDirection(key, false);
  }
}
