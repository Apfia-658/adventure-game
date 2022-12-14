public class NPC {
  PImage image;
  float s, x, y;

  NPC (int scale, int col, int row, PImage img) {
    s = scale * 0.7;
    image = img;
    x = col*scale + scale/2;
    y = row*scale + scale/2;
  }

  void display() {
    image (image, x, y, s, s);
  }

  String toString() {
    return "" + image.toString();
  }
}
