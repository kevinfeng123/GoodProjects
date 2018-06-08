class powerUpMany{
  float xPos;
  float yPos;
  
  powerUpMany(){
 
    xPos = random(840);
    yPos = random(800);
      
  }
  void spawnPowerup(){
    stroke(255); //white border
    fill(0, 255, 0); //bright green
    ellipse(xPos,yPos,50,50);  
  }
    void move(){
      yPos += 10;
  }
}
