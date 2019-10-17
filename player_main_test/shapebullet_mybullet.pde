public class shapebullet_mybullet extends shapebullet_basebullet
{
  int cx = 250, cy = 250; //回転運動の中心
  int r = 50; //回転運動の半径
  float rad = 90;
  int fr = 0; //フレーム数
  
  void move(){
    cy-=2;
    if(fr%2==0){
      x = cx - r * Math.cos(rad);
      y = cy - r * Math.sin(rad);
      rad+=0.5;
      if(rad==359) rad=0;
    }
    fr++;
  }
}

public class shapebullet_basebullet
{
  int HP = 1;
  double x = 250,y = 180; //floatからdoubleへ
  public boolean isDead = false;
  float size = 10;
  PImage image = new PImage();
  
  float start_mtime = 0;
  float dead_mtime = 1000;
  
  shapebullet_basebullet(){
    start_mtime = millis();
    
    imageMode(CENTER);
    image = loadImage("shapebullet.png");
  }
  
  public void upDate(){
    if (isDead)return;
    timerDead();
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
    clear();
    image(image, (float)x, (float)y, size, size); //doubleでエラー
  }
  
  void move(){
    y-=2;
  }
  
  void timerDead(){
    if (dead_mtime < millis() - start_mtime)isDead = true;
  }
  

}
