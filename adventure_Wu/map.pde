class Map {
  int scale;
  //change map, just test
  int map[][] = {
    {0, 0, 0, 0, 0, 0, 1, 1, 1}, 
    {1, 2, 2, 1, 1, 0, 0, 0, 6}, 
    {2, 5, 2, 0, 0, 0, 1, 1, 2}, 
    {2, 0, 0, 0, 1, 0, 0, 0, 0}, 
    {1, 1, 2, 0, 1, 7, 2, 2, 0}, 
    {0, 0, 0, 0, 1, 1, 2, 0, 0}, 
    {4, 2, 0, 0, 0, 0, 2, 0, 1}, 
    {2, 2, 0, 2, 0, 1, 1, 0, 2}, 
    {2, 0, 0, 2, 0, 1, 3, 0, 2}}; 
    
   Set <NPC> npcs = new HashSet();

int getValue(int x, int y){
  return map[y][x];
}

  void drawMap(int s) {
    scale = s;
    imageMode(CENTER);
    for (int r = 0; r < map.length; r++) {
      for (int c = 0; c < map[r].length; c++) {
        switch(map[r][c]) {
        case 0:
          //ground
          image(ground, c*s + s/2, r*s + s/2, s, s);  //draws images in center of square
          break;
        case 1: 
          //rocky 
          image (rock, c*s + s/2, r*s + s/2, s, s);
          break;
        case 2: 
        //trees
          image (tree, c*s + s/2, r*s + s/2, s, s);     
          break;
        case 3:
        //ostritch
          NPC ostrich_npc = new NPC(s, c, r, ostrich);
          npcs.add(ostrich_npc);
          break;
        case 4:
        //wizard
          NPC wiz_npc = new NPC(s, c, r, wizard);
          npcs.add(wiz_npc);
          break;
        case 5:
        //reaper
          NPC reap_npc = new NPC(s, c, r, reap);
          npcs.add(reap_npc);
          break;
        case 6:
        //archer
          NPC arch_npc = new NPC(s, c, r, arch);
          npcs.add(arch_npc);
          break;
        case 7:
        //pyromancer
          NPC pyro_npc = new NPC(s, c, r, pyro);
          npcs.add(pyro_npc);
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
