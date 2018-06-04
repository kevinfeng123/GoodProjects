class Platform {
  float x = 300;
  float y = 780;
  float h;
  float w;
  float r;
  float g;
  float b;
  
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
  }
  
  void movePlatform(){
    rect(mouseX, y, 200, 10); 
  }
  

}
