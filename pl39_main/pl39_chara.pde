public class pl39_chara{

  //{object
  protected float x=200, y=100;
  protected float vx=0, vy=0;
  protected float ax, ay;
  protected float size = 100;
  protected PImage image;
  protected boolean isDead = false;
  
  public float getX(){return x;}
  public float getY(){return y;}
  public float getSize(){return size;}
  public boolean getIsDead(){return isDead;}
  //}object
  
  //{chara
  protected float speed = 2;
  //}chara
  
  pl39_chara(){
  imageMode(CENTER);
  image = loadImage("my_chara.png");
  }
  
  public void upDate(){
    move();
    render();
  }
  
  protected void move(){
    vx = key_xy[0] * speed;
    vy = key_xy[1] * speed;
    x+=vx;
    y+=vy;
  }
  
  protected void render(){
    image(image, x, y, size, size);
  }
  
  public void hitPlanet(){
  }
}
