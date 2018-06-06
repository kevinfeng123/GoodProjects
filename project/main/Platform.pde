class Platform {
  float x = 300;
  float y = 780;
  float h;
  float w;
  float r;
  float g;
  float b;
  float rightX; //right x value 
  float leftX; //left x vaue
  float topY; //top y value
  float bottomY; //bottom y value
 
  Platform(){
    
    rect(300, 780, 200, 10);
  }
  
  Platform(float x, float y, float with, float hite){ //set height and width
    h = hite;
    w = with;
    r = 100; //colors will be changed to show difficulty of level
    g = 100;
    b = 100;
    rect(x,y,w,h);
    x = mouseX;
    rightX = x + with;
    leftX = x - with;
    topY = y + hite;
    bottomY = y - hite;
  }
  
  void movePlatform(){
    rect(mouseX, y, 200, 10); 
    x = mouseX;
    rightX = x + w;
    leftX = x;
    topY = y + h;
    bottomY = y - h;
  }
  

}