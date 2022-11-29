// Sophia Wu
// Adventure game
// E Block Alorithms/Data Structures


//CHANGE IMAGES INTO OWN STYLE IF TIME

//map
PImage rock;
PImage tree;
PImage ostrich;
PImage ground;
Map map = new Map();


void setup() {
  size (900,900);
  background(39,38,69);
  //map images/load in
  ground = loadImage("ground.png");
  rock = loadImage("rock.png");
  tree = loadImage("tree.png");
  ostrich = loadImage("ostrich.png");
  map.drawMap();
}
