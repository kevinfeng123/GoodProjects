class powerUpMany{
  float xPos;
  float yPos;
  
  powerUpMany(){
 
    xPos = random(840);
    yPos = random(800);
      
  }
  void spawnPowerup(){
    ellipse(xPos,yPos,100,100);  
  }
}
