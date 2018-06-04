class Platform {
  float h;
  float w;
  float r;
  float g;
  float b;
  
  Platform(){
    h = 50;
    w = 200;
  }
  
  Platform(int x, int y, int with, int hite){ //set height and width
    h = hite;
    w = with;
    r = 100; //colors will be changed to show difficulty of level
    g = 100;
    b = 100;
    rect(x,y,w,h);
  }
}
