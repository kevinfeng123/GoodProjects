class Bricks{
int hp;
float r = 0;
float g = 0;
float b = 0;

  Bricks(){
    hp = 1;
  }
  Bricks(int x,int y,int w,int h){
     rect(x,y,w,h);
     hp = 1;
  }
  
  //ifHit(){
  /** if (ball hits brick){
    hp -= 1;
    }
    **/
  //}
}
