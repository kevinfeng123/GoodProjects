Bricks[] brickArray = new Bricks[55];
Platform[] paddle = new Platform[1];
Ball[] playBall = new Ball[3]; // can hold multiple balls for powerups
powerUpBig[] biglist = new powerUpBig[5];
import java.util.*;
import java.io.*;
ArrayDeque<Integer> scores = new ArrayDeque<Integer>();
int lives = 3;
int score = 0;
boolean spawn = false;
boolean gameStart = false;



void setup() {
  size(840, 800);
  playBall[0] = new Ball();
  paddle[0] = new Platform(300, 780, 200, 10);
  createBricks();
  biglist[0] = new powerUpBig();
  try{
  Scanner scanner = new Scanner(new File(dataPath("scores.csv")));
  while(scanner.hasNext()){
    scores.addLast(Integer.valueOf(scanner.next()));
  }
  String str = "";
  for (Integer i : scores){
    str += i + " ";
  }
  System.out.println("start : [" + str + "]");
  
  }
  catch (Exception e){
     System.out.println("Working Directory = " +
              System.getProperty("user.dir"));
    printStackTrace(e);
  }
}
void mouseClicked(){
  gameStart = true;
}

void gameOver(){
  if (lives <= 0){
    background(0);
    textSize(100);
    text("GAME OVER", 100, 400);
    scores.removeLast();
    scores.addFirst(score);
      String str = "";
  
    try {
       str = "";
       while (scores.size() > 0){
          str += scores.removeFirst() + " "; 
       }
      str = str.substring(0,str.length()-1);
      BufferedWriter out  = new BufferedWriter(new FileWriter(dataPath("scores.csv")));
      out.write(str);
      out.close();
  
      
      Scanner scanner = new Scanner(new File(dataPath("scores.csv")));
  while(scanner.hasNextLine()){
    System.out.println(scanner.nextLine());
  }
    }
    catch (Exception e){
      printStackTrace(e);
    }
  }
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

void contactBrick(){
  for (Bricks b : brickArray){
      if (b.hp.size() > 0){
        if (playBall[0].xPos - 10 < b.rightX && b.leftX < playBall[0].xPos - 10 && playBall[0].yPos - 10 == b.bottomY){ //bottom side of brick
        //  if (playBall[0].xpos > 0)
            b.die();
            playBall[0].ySpeed *= -1;
            score += 1;
        }
        if (playBall[0].xPos - 10 < b.rightX && b.leftX < playBall[0].xPos - 10 && playBall[0].yPos - 10 == b.topY){ //top side of brick
        //  if (playBall[0].xpos > 0)
             b.die();
            playBall[0].ySpeed *= -1;
            score += 1;
        }
        if (b.leftX == playBall[0].xPos - 10 && playBall[0].yPos - 10 > b.bottomY && playBall[0].yPos - 10 < b.topY){ //left side of brick
        //  if (playBall[0].xpos > 0)
            playBall[0].xSpeed *= -1;
             b.die();
             score += 1;
        }
        if (b.rightX == playBall[0].xPos - 10 && playBall[0].yPos - 10 > b.bottomY && playBall[0].yPos - 10 < b.topY){ //right side of brick
        //  if (playBall[0].xpos > 0)
            playBall[0].xSpeed *= -1;
             b.die();
             score += 1;
        }
      }
  }

}

void contactPlatform(){
 // if (playBall[0].xPos + 20 < paddle[0].rightX && paddle[0].leftX < playBall[0].xPos + 20 && playBall[0].yPos + 20 == paddle[0].bottomY){ //bottom side of brick

   //         playBall[0].ySpeed *= -1;
     //   }
        if (playBall[0].xPos < paddle[0].rightX && paddle[0].leftX < playBall[0].xPos + 20 && playBall[0].yPos + 10 == paddle[0].topY){ //top side of brick

            playBall[0].ySpeed *= -1;
        }
     //   if (paddle[0].leftX == playBall[0].xPos - 10 && playBall[0].yPos - 10 > paddle[0].bottomY && playBall[0].yPos - 10 < paddle[0].topY){ //left side of brick

       //     playBall[0].xSpeed *= -1;
            
        //}
        //if (paddle[0].rightX == playBall[0].xPos - 10 && playBall[0].yPos - 10 > paddle[0].bottomY && playBall[0].yPos - 10 < paddle[0].topY){ //right side of brick
 
          //  playBall[0].xSpeed *= -1;
       // }
}
  
void draw(){
    if (!gameStart){
      textSize(100);
      text("Click to Start", 100, 400);
    }
    if (lives > 0 && gameStart){
      background(0);
      textSize(30);
      text("score: ", 20, 35); //number of bricks hit by player
      text(score, 150, 35);
      text("avg score: ", 20, 70); //average number of bricks hit by player
      text("lives", 20, 750); //text for lives remaining 
      text(lives, 150, 750); //displayed on bottom left of screen
      int sum = 0;
      for (Integer i : scores){
        sum += i;
      }
      text(sum / 5., 190, 70);
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
      contactBrick();
      contactPlatform();
      if (playBall[0].yPos > 1500){
        lives -= 1;
      }
      playBall[0].respawn();
      gameOver();
      //Display score at the top with an accessor to Bricks
    }
}
