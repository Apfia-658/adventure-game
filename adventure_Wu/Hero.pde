class Hero {
  float s; //scale
  float x, y; //location
  int xbound, ybound;

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

  boolean onMap(float x, float y) {
    if (x < scale/2 || x > width - scale/2 || y < scale/2 || y > height - scale/2) {
      return false;
    } else return true;
  }

  float getX() {
    return x;
  }

  float getY() {
    return y;
  }

  void move(char direction, float speed) {
    switch (direction) {
      //up
    case 'w': 
      if (!(getY() < scale*0.3)) { //checks bounds
        y -= speed;
      }
      break;
      //left
    case 'a':
      if (!(getX() < scale*0.3)) {
        x -= speed;
      }
      break;
      //down
    case 's':
      if (!(getY() > ybound-scale*0.3)) {
        y += speed;
      }
      break;
    case 'd':
      if (!(getX() > xbound-scale*0.3)) {
        x += speed;
      }
      break;
    }
  }
}
