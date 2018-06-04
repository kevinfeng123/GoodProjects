class Bricks{
int hp = 0;
float r = 0;
float g = 0;
float b = 0;
float cornerx; //right x value 
float corner2x; //left x vaue
float cornery; //top y value
float corner2y; //bottom y value

int xPos, yPos, widt, hite;
boolean alive = true;
int score = 0;


  Bricks(){
    hp = 1;
  }
  Bricks(int x,int y,int w,int h){
     rect(x,y,w,h);
     xPos = x;
     yPos = y;
     widt = w;
     hite = h;
     hp = 1;
  }
  
  void createBrick(){
    if (hp > 0){
    
    rect(xPos, yPos, widt, hite);
    cornerx = xPos + widt;
    corner2x = xPos - widt;
    cornery = yPos + hite;
    corner2y = yPos - hite;
    }
  }
  
  void ballOn(){
    
  }
  void  ifHit(){
    if (hp < 1){
      fill(0); 
      rect(xPos, yPos, widt, hite);
      fill(255); 
    }
    if (hp >= 1){
      if (dist()){
         between block and ball is 0
        }{
        hp -= 1;
        }
    }else{
      fill(0, 0, 0);
    }
   if (ball hits brick){
    hp -= 1;
    score += 1;
    }
  }
}