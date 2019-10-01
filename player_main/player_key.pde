//key入力の部分
//ここでキーのコードは完結させること

public class player_key{
  public int[] key_xy = {0, 0};//wキーでkey_xy[1] = -1、aキーでkey_xy[0] = -1、sとdキーはその逆が入れられるようにする。 
  
  private boolean up = false; //＊space3のファイルで定義されている
  private boolean left = false;
  private boolean down = false;
  private boolean right = false;
  private boolean space = false;
  
  private boolean currentSpace = false;
  
  boolean prevSpace = false;//prevSpaceで一回押しのキー
  
  boolean key_w = false; //押している間真 up,left,down,rightと常に同じなのでいらないかも
  boolean key_a = false;
  boolean key_s = false;
  boolean key_d = false;
  boolean key_space = false;

  public player_key(){
    println("instance player_key");
    if (up) {key_xy[1] = -1;}
    else {key_xy[1] = 0;}
    if (left) {key_xy[0] = -1;}
    else {key_xy[0] = 0;}
    if (down) {key_xy[1] = 1;}
    else {key_xy[1] = 0;}
    if (right) {key_xy[0] = 1;}
    else {key_xy[0] = 0;}
    
  }
  
  public void EarlyUpdate(){
    prevSpace = false;
    if (space) {prevSpace = true;}
    if (prevSpace) {prevSpace = false;}
  }
  
  public void LateUpdate(){
    if (space) {currentSpace = true;}
    else {currentSpace = false;}
  }
  
  public boolean IsOnKey(String key_name){//引数のキーが押された直後が判定する。returnは適宜変更
    if (up) {key_w = true;}
    if (left) {key_a = true;}
    if (down) {key_s = true;}
    if (right) {key_d = true;}
    if (space) {key_space = true;}
    
    if (up = false) {key_w = false;}
    if (left = false) {key_a = false;}
    if (down = false) {key_s = false;}
    if (right = false) {key_d = false;}
    if (space = false) {key_space = false;}
  
  return false;
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
  /*
  public void keyPressed(){
    if (keyCode == 87) {up = true;}
    if (keyCode == 65) {left = true;}
    if (keyCode == 83) {down = true;}
    if (keyCode == 68) {right = true;}
    if (keyCode == 32) {space = true;}
    }
  public void keyReleased(){
    if (keyCode == 87) {up = false;}
    if (keyCode == 65) {left = false;}
    if (keyCode == 83) {down = false;}
    if (keyCode == 68) {right = false;}
    if (keyCode == 32) {space = false;}
    
  }*/
}
