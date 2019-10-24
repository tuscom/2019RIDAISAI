//大本の部分

private int[] window_size = new int[]{800, 500};
private int bg_color = 255;

pl39_chara player;

void settings(){
  size(window_size[0], window_size[1]);
}

void setup(){
  player = new pl39_chara();
}

void draw(){
  background(bg_color);
  
  //{key
  key_upDate();
  CheckKey();
  //}key
  
  //{chara
  player.upDate();
  //}chara
}

//テスト用 - 目的の部分が実装でき次第削除
private void CheckKey(){
  textSize(20);
  String x_text = String.format("x : %d", key_xy[0]);
  String y_text = String.format("y : %d", key_xy[1]);
  
  fill(255, 0, 0);
  text(x_text, 10, 20);
  fill(0, 255, 0);
  text(y_text, 10, 40);
}
