//大本の部分

private int[] window_size = new int[]{800, 500};
private int bg_color = 255;

public pl39_chara player;

//{key
public pl39_key my_key;
boolean prevSpace,space;
boolean up,right,left,down,prevUp,prevRight,prevLeft,prevDown;
//}key

void settings(){
  size(window_size[0], window_size[1]);
}

void setup(){
  player = new pl39_chara();
  my_key = new pl39_key();
}

void draw(){
  background(bg_color);
  
  //{key - Early
  my_key.EarlyUpdate();
  CheckKey();
  //}key - Early
  
  //{chara
  player.upDate();
  //}chara
  
  //{key - Late
  my_key.LateUpdate();
  //}key - Late
}

//テスト用 - 目的の部分が実装でき次第削除
private void CheckKey(){
  textSize(20);
  String x_text = String.format("x : %d", my_key.key_xy[0]);
  String y_text = String.format("y : %d", my_key.key_xy[1]);
  
  fill(255, 0, 0);
  text(x_text, 10, 20);
  fill(0, 255, 0);
  text(y_text, 10, 40);
}

//{key
void keyPressed() //＊space3のファイルにある関数と同じ関数
{ 
  if (keyCode == RIGHT || keyCode == 'D') right = true;
  if (keyCode == LEFT || keyCode == 'A') left = true;
  if (keyCode == DOWN || keyCode == 'S') down = true;
  if (keyCode == UP || keyCode == 'W') up = true;
  if (key == ' ') space = true;
  
  if (key != ' ')return;
}

void keyReleased() //＊space3のファイルにある関数と同じ関数
{ 
  if (keyCode == RIGHT || keyCode == 'D') right = false;
  if (keyCode == LEFT || keyCode == 'A') left = false;
  if (keyCode == DOWN || keyCode == 'S') down = false;
  if (keyCode == UP || keyCode == 'W') up = false;
  if (key == ' ') space = false;
}
//}key
