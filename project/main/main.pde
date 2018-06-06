Bricks[] brickArray = new Bricks[55];
Platform[] paddle = new Platform[1];
Ball[] playBall = new Ball[3]; // can hold multiple balls for powerups
powerUpBig[] biglist = new powerUpBig[5];
int lives = 3;
int score = 0;
boolean spawn = false;

void setup() {
  size(840, 800);
  playBall[0] = new Ball();
  paddle[0] = new Platform(300, 780, 200, 10);
  createBricks();
  biglist[0] = new powerUpBig();

}

void createBricks(){
  int x = 0;
  for (int i = 50; i < 760; i += 70) {
    for (int j = 100; j < 510; j += 100) {
      brickArray[x] = new Bricks(i, j, 40, 20);
      x += 1;
    }
  }
}

void contact(){
  for (Bricks b : brickArray){
      if (b.hp > 0){
        if (playBall[0].xPos + 20 < b.rightX && b.leftX < playBall[0].xPos + 20 && playBall[0].yPos + 20 == b.bottomY){ //bottom side of brick
        //  if (playBall[0].xpos > 0)
            b.die();
            playBall[0].ySpeed *= -1;
        }
        if (playBall[0].xPos + 20 < b.rightX && b.leftX < playBall[0].xPos + 20 && playBall[0].yPos + 20 == b.topY){ //top side of brick
        //  if (playBall[0].xpos > 0)
             b.die();
            playBall[0].ySpeed *= -1;
        }
        if (b.leftX == playBall[0].xPos + 20 && playBall[0].yPos + 20 > b.bottomY && playBall[0].yPos  + 20 < b.topY){ //left side of brick
        //  if (playBall[0].xpos > 0)
            playBall[0].xSpeed *= -1;
             b.die();
        }
        if (b.rightX == playBall[0].xPos + 20 && playBall[0].yPos + 20 > b.bottomY && playBall[0].yPos + 20 < b.topY){ //right side of brick
        //  if (playBall[0].xpos > 0)
            playBall[0].xSpeed *= -1;
             b.die();
        }
      }
  }
}
  
void draw(){
    if (lives > 0){
      background(0);
      
      for (Bricks b : brickArray){
        b.createBrick();
        
        //if (ball.distance(b) <= 40 ){
         // ifHit();
        //}
      }
      //brickArray[2].setHP(0); testing hp
      paddle[0].movePlatform();
      playBall[0].move();
      if (int(random(1000)) == 1){ //powerUp spawn rate
        spawn = true;
      }
      if (spawn){
        biglist[0].spawnPowerup();
      }
      contact();
      //Display score at the top with an accessor to Bricks
    }
}


 //if (brickArray[i].hp <= 0){  REMOVE BRICKS WHEN HEALTH IS 0
//  brickArray.remove(i);
//}
