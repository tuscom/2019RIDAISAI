//key入力の部分
//ここでキーのコードは完結させること

public class pl39_key {
  public int[] key_xy = {0, 0};//wキーでkey_xy[1] = -1、aキーでkey_xy[0] = -1、sとdキーはその逆が入れられるようにする。 
  //prevSpace,prevUp,prevRight,prevLeft,prevDownで一回押しのキー
  boolean space1,up1,right1,left1,down1;


  public pl39_key(){
    println("instance player_key");
  }
  
  public void EarlyUpdate(){
    prevSpace = space && !space1;
    prevUp = up && !up1;
    prevRight = right && !right1;
    prevLeft = left && !left1;
    prevDown = down && !down1;
    if (up) {key_xy[1] = -1;}
    else if (down) {key_xy[1] = 1;}
    else {key_xy[1] = 0;}
    if (left) {key_xy[0] = -1;}
    else if (right) {key_xy[0] = 1;}
    else {key_xy[0] = 0;}
    
  }
  
  public void LateUpdate(){
    space1 = space;
    up1 = up;
    right1 = right;
    left1 = left;
    down1 = down;
  }
  
  
  
  void keyPressed() //＊space3のファイルにある関数と同じ関数
{
  if (keyCode == RIGHT || keyCode == 'D') right = true;
  if (keyCode == LEFT || keyCode == 'A') left = true;
  if (keyCode == DOWN || keyCode == 'S') down = true;
  if (keyCode == UP || keyCode == 'W') up = true;
  if (key == ' ') space = true;
}

void keyReleased() //＊space3のファイルにある関数と同じ関数
{
  if (keyCode == RIGHT || keyCode == 'D') right = false;
  if (keyCode == LEFT || keyCode == 'A') left = false;
  if (keyCode == DOWN || keyCode == 'S') down = false;
  if (keyCode == UP || keyCode == 'W') up = false;
  if (key == ' ') space = false;
}

}
