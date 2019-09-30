public class shapebullet_basebullet
{
  int HP = 1;
  float x = 250,y = 180;
  public boolean isDead = false;
  float size = 10;
  PImage image = new PImage();
  
  shapebullet_basebullet(){
    imageMode(CENTER);
    image = loadImage("shapebullet.png");
  }
  
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
    image(image, x, y, size, size);
  }
  
  void move(){
  y-=2;
  }
  

}
