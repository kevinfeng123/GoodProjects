class Ball{
  float xPos;
  float yPos;
  float xSpeed = -10; //to adjust difficulty later
  float ySpeed = -10;
  float rad = 20; //adjust size of ball for difficulty
  
  Ball(){
    xPos = 400;
    yPos = 670;
    ellipse(xPos, yPos, rad, rad);
  }
  
  Ball(float x, float y){
    ellipse(x, y, rad, rad);
  }
  
  void move(){
    if (xPos <= 0 || xPos >= 840){
    xSpeed *= -1;
    }  
    if (yPos <= 0){
    ySpeed *= -1;
    }
    xPos += xSpeed;
    yPos += ySpeed;
    ellipse(xPos, yPos, rad, rad);
    
    //when making contact with the platform, vary the angle and speed based on platform velocity and positioning
  }
  
  void respawn(){
    if (yPos > 1500){ //respawn delay
      ellipse(400, 670, rad, rad);
      yPos = 670;
      xPos = 400;
    }
  }
  
 
 
  
  
  
}