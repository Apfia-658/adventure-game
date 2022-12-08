class Map {
  int scale;
  //change map, just test
  int map[][] = {
    {0, 0, 0, 0, 0, 0, 1, 1, 1}, 
    {1, 2, 2, 1, 1, 0, 0, 0, 0}, 
    {2, 0, 2, 0, 0, 0, 1, 1, 2}, 
    {2, 0, 0, 0, 1, 0, 0, 0, 0}, 
    {1, 1, 2, 0, 1, 0, 2, 2, 0}, 
    {0, 0, 0, 0, 1, 1, 2, 0, 0}, 
    {4, 2, 0, 0, 0, 0, 2, 0, 1}, 
    {2, 2, 0, 2, 0, 1, 1, 0, 2}, 
    {2, 0, 0, 2, 0, 1, 3, 0, 2}}; 

  void drawMap(int s) {
    scale = s;
    imageMode(CENTER);
    for (int r = 0; r < map.length; r++) {
      for (int c = 0; c < map[r].length; c++) {
        switch(map[r][c]) {
        case 0:
          image(ground, c*s + s/2, r*s + s/2, s, s);  //draws images in center of square
          break;
        case 1: 
          image (rock, c*s + s/2, r*s + s/2, s, s);
          break;
        case 2: 
          image (tree, c*s + s/2, r*s + s/2, s, s);     
          break;
        case 3:
          image(ground, c*s + s/2, r*s + s/2, s, s); //base ground layers
          NPC ostrich_npc = new NPC(s, c, r, ostrich);
          ostrich_npc.display();
          break;
        case 4:
          image(ground, c*s + s/2, r*s + s/2, s, s); //base ground layers
          NPC wiz_npc = new NPC(s, c, r, wizard);
          wiz_npc.display();
          break;
        case 5:
          image(ground, c*s + s/2, r*s + s/2, s, s); //base ground layers
          NPC reap_npc = new NPC(s, c, r, reap);
          reap_npc.display();
          break;
        }
      }
    }
  }

  boolean slow (float advX, float advY) {
    int x = (int) advX;
    int y = (int) advY;
    if (map[y/scale][x/scale] == 1 || map[y/scale][x/scale] == 2) {
      return true;
    } else return false;
  }
}
