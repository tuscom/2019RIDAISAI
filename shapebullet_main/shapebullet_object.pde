public class shapebullet_object{

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
  
  shapebullet_object(){
  //imageMode(CENTER);
  image = loadImage("pre_object.png");
  }
  
  public void upDate(){
    move();
    render();
  }
  
  protected void move(){
    x+=vx;
    y+=vy;
  }
  
  protected void render(){
    image(image, x, y, size, size);
  }
  
  public void hitPlanet(){
    println("object : hit");
  }
}
