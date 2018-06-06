class powerUpBig{
  float xPos;
  float yPos;
  
  powerUpBig(){
 
    xPos = random(840);
    yPos = random(800);
      
  }
  void spawnPowerup(){
    ellipse(xPos,yPos,10,10);  
  }
}
