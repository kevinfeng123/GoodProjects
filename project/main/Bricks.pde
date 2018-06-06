class Bricks{
int hp = 1;
float r = 0;
float g = 0;
float b = 0;
float rightX; //right x value 
float leftX; //left x vaue
float topY; //top y value
float bottomY; //bottom y value

int xPos, yPos, widt, hite;
//boolean alive = true;
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
  
  //int getX(){
    //return xPos;
  //}
  void createBrick(){
    if (hp > 0){
    
    rect(xPos, yPos, widt, hite);
    rightX = xPos + widt;
    leftX = xPos - widt;
    topY = yPos + hite;
    bottomY = yPos - hite;
    }
  }
  
  //void setHP(int val){
    //hp = val;
 // }
  void die(){
    hp = 0;
    }
  }
  //void  ballContact(){
   
    //}
  
