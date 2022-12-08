public class NPC {
  int scale;
  int col;
  int row;
  PImage image;

  NPC (int s, int c, int r, PImage img) {
    scale = s;
    image = img;
    col = c;
    row = r;
  }

  void display() {
    image (image, col*scale + scale/2, row*scale + scale/2, scale*0.7, scale*0.7);
  }

  //int getScale() {
  //  return scale;
  //}

  //int getCol() {
  //  return col;
  //}

  //int getRow() {
  //  return row;
  //}
}
