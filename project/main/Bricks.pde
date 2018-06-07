import java.util.*;
class Bricks{
Stack<Integer> hp;
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
    hp.push(1);
  }
  Bricks(int x,int y,int w,int h){
     rect(x,y,w,h);
     xPos = x;
     yPos = y;
     widt = w;
     hite = h;
     hp = new Stack<Integer>();
     hp.push(1);
  }
  
  //int getX(){
    //return xPos;
  //}
  void createBrick(){
    if (hp.size() > 0){
    
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
    while (hp.size() > 0){
      hp.pop();
    }
  }
  //void  ballContact(){
   
    //}
}
