public class shapebullet_basebullet
{
  int HP = 1;
  double x = 250, y = 180; //floatからdoubleへ
  public boolean isDead = false;
  float size = 10;
  private PImage image = new PImage();

  float start_mtime = 0;
  float dead_mtime = 2000; //勝手に2000に
  
  shapebullet_basebullet(){
  float dead_mtime = 1000;

  public float getX() {
    return (float)x;
  }
  public float getY() {
    return (float)y;
  }
  public float getSize() {
    return size;
  }
  public boolean getIsDead() {
    return isDead;
  }

  shapebullet_basebullet() {
    start_mtime = millis();

    imageMode(CENTER);
    image = loadImage("shapebullet.png");
  }

  public void upDate() {
    if (isDead)return;
    timerDead();
    render();
    move();
    checkHitWall();
    checkHP();
  }

  void checkHitWall() {
    if (x < 0 || width < x || y < 0 || height < y)isDead = true;
  }

  void checkHP() {
    if (HP < 0)isDead = true;
  }

  void render() {
    image(image, (float)x, (float)y, size, size); //doubleでエラー
  }

  void move() {
    y-=2;
  }

  void timerDead() {
    if (dead_mtime < millis() - start_mtime)isDead = true;
  }

  public void hitPlanet() {
  }
}
