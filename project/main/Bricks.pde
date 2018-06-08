import java.util.*;
class Bricks{
Stack<Integer> hp;
float r; // red color value 
float g; // green color value 
float b; // blue color value
float rightX; //right x value 
float leftX; //left x vaue
float topY; //top y value
float bottomY; //bottom y value

int xPos, yPos, widt, hite;
//boolean alive = true;
int score = 0;


  Bricks(){
    hp.push(1);
    r = random(128, 255);
    g = random(128, 255);
    b = random(128, 255);
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
    fill(r, g, b);
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
