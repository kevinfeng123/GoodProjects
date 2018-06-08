class powerUpBig{
  float xPos;
  float yPos;
  float rightX;
  float leftX;
  float topY;
  float botY;
  powerUpBig(){
 
    xPos = random(840);
    yPos = random(800);
    rightX = xPos + 50;
    leftX = xPos - 50;
    topY = yPos - 50;
    botY = yPos + 50;
  }
  void spawnPowerup(){
    stroke(150); //gray border 
    fill(255, 0, 0); //bright red
    ellipse(xPos,yPos,50,50);  
  }
//  void move(){
     // yPos += 10;
//  }
}
