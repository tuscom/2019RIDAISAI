//画面設定
int[] window_size = new int[]{500, 300};
int bg_color = 0; //255から勝手に変更

//単発処理
//shapebullet_basebullet bb;
shapebullet_mybullet mb;

//発射処理
char fire_key = ' ';
boolean sw_fire = true;
shapebullet_basebullet[] BBs = new shapebullet_basebullet[100];

void settings(){
  size(window_size[0], window_size[1]);
}

void setup(){
  //bb = new shapebullet_basebullet();
  mb = new shapebullet_mybullet();
  
  for (int i=0;i<BBs.length;i++){
    BBs[i] = null;
  }
}

void draw(){
  background(bg_color);
  //単発処理
  //bb.upDate();
  mb.upDate();
  
  //複数弾丸処理
  for (int i=0;i<BBs.length;i++){
    if (BBs[i] == null) continue;
    if (BBs[i].isDead) {BBs[i] = null;continue;};
    BBs[i].upDate();
  }
}

//発射処理
void keyPressed(){
  if (key != ' ')return;
  if (!sw_fire) return;
  sw_fire = false;
  
  for (int i=0;i<BBs.length;i++){
    if(BBs[i]!=null)continue;
    BBs[i] = new shapebullet_basebullet();
    return;
  }
  println("発射限界です。");
}

void keyReleased(){
  sw_fire = true;
}
