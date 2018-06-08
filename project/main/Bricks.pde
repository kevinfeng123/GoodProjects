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
  }
  Bricks(int x,int y,int w,int h){
     rect(x,y,w,h);
     xPos = x;
     yPos = y;
     widt = w;
     hite = h;
     //brick will be random colors
     r = random(100, 255);
     g = random(100, 255);
     b = random(100, 255);
     hp = new Stack<Integer>();
     hp.push(1);
  }
  
  //int getX(){
    //return xPos;
  //}
  void createBrick(){
    if (hp.size() > 0){
    
    fill(r, g, b);
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
