//大本の部分

int[] window_size = new int[]{500, 300};
int bg_color = 255;

//単発処理
shapebullet_basebullet bb;
shapebullet_mybullet mb;

//発射処理
char fire_key = ' ';
boolean sw_fire = true;
shapebullet_basebullet[] BBs = new shapebullet_basebullet[100];
shapebullet_mybullet[] MBs = new shapebullet_mybullet[100]; //mybuuletの分も追加


public player_chara pc;
public player_key pk;
boolean prevSpace,space;
boolean up,right,left,down,prevUp,prevRight,prevLeft,prevDown;

void settings(){
  size(window_size[0], window_size[1]);
}

void setup(){
  pc = new player_chara();
  pk = new player_key();
  bb = new shapebullet_basebullet();
  mb = new shapebullet_mybullet();
  
  for (int i=0;i<BBs.length;i++){
    BBs[i] = null; 
  }
  for (int i=0;i<MBs.length;i++){//mybuuletの分も追加
   MBs[i] = null; 
 }

}

void draw(){
  background(bg_color);
  pk.EarlyUpdate();
  CheckKey();
  pc.Update();
  //単発処理
  bb.upDate();
  mb.upDate();
  
  //複数弾丸処理
  for (int i=0;i<BBs.length;i++){
    if (BBs[i] == null) continue;
    if (BBs[i].isDead) {BBs[i] = null;continue;};
    BBs[i].upDate();
  }
  
  for (int i=0;i<MBs.length;i++){ //mybuuletの分も追加
    if (MBs[i] == null) continue;
    if (MBs[i].isDead) {MBs[i] = null;continue;};
    MBs[i].upDate();
  }
  pk.LateUpdate();
  
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
  if (prevSpace){text("check",10,100);}
}

void keyPressed() //＊space3のファイルにある関数と同じ関数
{ 
  if (keyCode == RIGHT || keyCode == 'D') right = true;
  if (keyCode == LEFT || keyCode == 'A') left = true;
  if (keyCode == DOWN || keyCode == 'S') down = true;
  if (keyCode == UP || keyCode == 'W') up = true;
  if (key == ' ') space = true;
  
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
  if (prevSpace){sw_fire = false;}
  for (int i=0;i<MBs.length;i++){ //mybuuletの分も追加
    if(MBs[i]!=null)continue;
    MBs[i] = new shapebullet_mybullet();
    return;
  }
}

void keyReleased() //＊space3のファイルにある関数と同じ関数
{ 
  if (keyCode == RIGHT || keyCode == 'D') right = false;
  if (keyCode == LEFT || keyCode == 'A') left = false;
  if (keyCode == DOWN || keyCode == 'S') down = false;
  if (keyCode == UP || keyCode == 'W') up = false;
  if (key == ' ') space = false;
    sw_fire = true;
}
