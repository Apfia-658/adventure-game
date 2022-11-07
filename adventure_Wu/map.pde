class Map {
  //initialize images
  
  //change map, just test
  int map[][] = {{0, 0, 1, 1, 1, 0, 0, 0, 0}, 
    {1, 1, 0, 1, 1, 0, 0, 0, 0}, 
    {1, 1, 0, 0, 0, 1, 1, 1, 0}, 
    {1, 1, 0, 0, 0, 1, 1, 1, 0}, 
    {1, 1, 0, 0, 0, 1, 1, 1, 0}, 
    {1, 1, 0, 0, 0, 1, 1, 1, 0}, 
    {1, 1, 0, 0, 0, 1, 1, 1, 0}, 
    {1, 1, 0, 0, 0, 1, 1, 1, 0}, 
    {1, 1, 0, 0, 0, 1, 1, 1, 0}}; 

  void drawMap() {
    imageMode(CENTER);
    for (int r = 0; r < map.length; r++) {
      for (int c = 0; c < map[r].length; c++) {
        if (map[r][c] == 1) {
          image (bowPiece, c*100 + 50, (r+1)*100 - 50, 80, 80);
        }
        else if (map[r][c] == 5) {
          image (knifePiece, c*100 + 50, (r+1)*100 - 50, 80, 80);
        }
      }
    }
  }
}
