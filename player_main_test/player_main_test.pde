//大本の部分

int[] window_size = new int[]{500, 300};
int bg_color = 255;

public player_chara pc;
public player_key pk;

shapebullet_mybullet[] MBs = new shapebullet_mybullet[100]; //mybuuletの分も追加
void settings(){
  size(window_size[0], window_size[1]);
}
boolean sw_fire = true;
void setup(){
  pc = new player_chara();
  pk = new player_key();
  for (int i=0;i<MBs.length;i++){//mybuuletの分も追加
   MBs[i] = null; 
 }
}

void draw(){
  background(bg_color);
  clear();
  pk.EarlyUpdate();
  CheckKey();
  pc.Update();

  
  for (int i=0;i<MBs.length;i++){ //mybuuletの分も追加
    if (MBs[i] == null) continue;
    if (MBs[i].isDead) {MBs[i] = null;continue;};
    MBs[i].upDate();
  }
  
  pk.LateUpdate();
  }
void keyPressed(){
  if (key != ' ')return;
  if (!sw_fire) return;
  sw_fire = false;
  /*
  for (int i=0;i<BBs.length;i++){
   if(BBs[i]!=null)continue;
    BBs[i] = new shapebullet_basebullet();
    return;
  }
  println("発射限界です。");
  */
  for (int i=0;i<MBs.length;i++){ //mybuuletの分も追加
    if(MBs[i]!=null)continue;
    MBs[i] = new shapebullet_mybullet();
    return;
  }
}
void keyReleased(){
  sw_fire = true;
}


//テスト用 - 目的の部分が実装でき次第削除
void CheckKey(){
  textSize(30);
  String x_text = String.format("x : %d", pk.key_xy[0]);
  String y_text = String.format("y : %d", pk.key_xy[1]);
  
  fill(255, 0, 0);
  text(x_text, 10, 40);
  fill(0, 255, 0);
  text(y_text, 10, 70);
//テスト用


}
