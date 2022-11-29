class Map {
  //change map, just test
  int map[][] = {
    {0, 0, 0, 0, 0, 0, 1, 1, 1}, 
    {1, 2, 2, 1, 1, 0, 0, 0, 0}, 
    {2, 0, 2, 0, 0, 0, 1, 1, 2}, 
    {2, 0, 0, 0, 1, 0, 0, 0, 0}, 
    {1, 1, 2, 0, 1, 0, 2, 2, 0}, 
    {0, 0, 0, 0, 1, 1, 2, 0, 0}, 
    {0, 2, 0, 0, 0, 0, 2, 0, 1}, 
    {2, 2, 0, 2, 0, 1, 1, 0, 2}, 
    {2, 0, 0, 2, 0, 1, 3, 0, 2}}; 

  void drawMap() {
    imageMode(CENTER);
    for (int r = 0; r < map.length; r++) {
      for (int c = 0; c < map[r].length; c++) {
        switch(map[r][c]) {
        case 0:
          image(ground, c*100 + 50, r*100 + 50, 100,100);
          break;
        case 1: 
          image (rock, c*100 + 50, r*100 + 50, 100, 100);
          break;
        case 2: 
          image (tree, c*100 + 50, r*100 + 50, 100, 100);     
          break;
        case 3:
          image (ostrich, c*100 + 50, r*100 + 50, 70, 70);     
          break;
        }
      }
    }
  }
  
}
