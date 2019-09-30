public class shapebullet_basebullet
{
  int HP = 1;
  float x = 0,y = 0;
  boolean isDead = false;
  float size = 10;
  PImage image;
  
  public void upDate(){
    if (isDead)return;
    render();
    move();
    checkHitWall();
    checkHP();
  }
  
  void checkHitWall(){
    if(x < 0 || width < x || y < 0 || height < y)isDead = true;
  }
  
  void checkHP(){
    if(HP < 0)isDead = true;
  }
  
  void render(){
    //image(image, x, y, size, size);
  }
  
  void move(){
  
  }
  

}
