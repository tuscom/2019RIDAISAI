//大本の部分

int[] window_size = new int[]{500, 300};
int bg_color = 255;


void settings(){
  size(window_size[0], window_size[1]);
}

void setup(){
}

void draw(){
  background(bg_color);
  key_upDate();
  
  CheckKey();
}

//テスト用 - 目的の部分が実装でき次第削除
void CheckKey(){
  textSize(30);
  String x_text = String.format("x : %d", key_xy[0]);
  String y_text = String.format("y : %d", key_xy[1]);
  
  fill(255, 0, 0);
  text(x_text, 10, 40);
  fill(0, 255, 0);
  text(y_text, 10, 70);
}
