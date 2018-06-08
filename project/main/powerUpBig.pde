class powerUpBig{
  float xPos;
  float yPos;
  
  powerUpBig(){
 
    xPos = random(840);
    yPos = random(800);
      
  }
  void spawnPowerup(){
    stroke(150); //gray border 
    fill(255, 0, 0); //bright red
    ellipse(xPos,yPos,50,50);  
  }
  void move(){
      yPos += 10;
  }
}
