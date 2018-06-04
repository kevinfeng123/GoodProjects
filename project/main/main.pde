Bricks[] brickArray = new Bricks[55];

void setup(){
  size(840,800);
  int x = 0;
  background(0);
  for (int i = 50; i < 760; i += 70){
    for (int j = 100; j < 510; j += 100){
      brickArray[x] = new Bricks(i, j, 40, 20);
      x += 1;
    }
  }
  Platform paddle = new Platform (200, 200, 200, 50);
}

// if (brickArray[i].hp <= 0){  REMOVE BRICKS WHEN HEALTH IS 0
//  brickArray.remove(i);
//}
