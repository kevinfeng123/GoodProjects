class powerUpSlow{
  float xPos;
  float yPos;
  
  powerUpSlow(){
 
    xPos = random(840);
    yPos = random(800);
      
  }
  void spawnPowerup(){
    stroke(0); //black border
    fill(0,0, 255); //bright blue
    ellipse(xPos,yPos,50,50);  
  }
    void move(){
      yPos += 10;
  }
}
