class Hero {
  float s, x, y; //scale & location
  int xbound, ybound;
  Boolean[] movement = {false, false, false, false};

  Hero(float s, int myX, int myY) {
    this.s = s;
    xbound = myX;
    ybound = myY;
  }

  void setLocation(float tempX, float tempY) {
    x= tempX;
    y = tempY;
  }

  void display() {
    image(adventurer, x, y, s, s);
  }

  void setDirection(char direction, boolean move) {
    switch (direction) {
    case 'w':
      movement[0] = move;
      break;
    case 'a':
      movement[1] = move;
      break;
    case 's':
      movement[2] = move;
      break;
    case 'd':
      movement[3] = move;
      break;
    }
  }


  void move(float speed) {
    //up
    if (movement[0] == true && !(y < scale*0.3)) { //checks bounds
      y -= speed;
    }
    //left
    if (movement[1] == true && !(x < scale*0.3)) {
      x -= speed;
    }
    //down
    if (movement[2] == true && !(y > ybound-scale*0.3)) {
      y += speed;
    }
    //right
    if (movement[3] == true && !(x > xbound-scale*0.3)) {
      x += speed;
    }
  }

  //checks if intersect w/ NPC
  boolean intersect() {
    //print(map.getValue((int)(x/s), (int)(y/s)) > 2);
    return (map.getValue((int)(x/s)-1, (int)(y/s)-1) > 2);
    
  }
}
