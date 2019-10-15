//画面設定
int[] window_size = new int[]{500, 300};
int bg_color = 0; //255から勝手に変更

//単発処理
//shapebullet_basebullet bb;
//shapebullet_mybullet mb;

//発射処理
char fire_key = ' ';
boolean sw_fire = true;
shapebullet_basebullet[] BBs = new shapebullet_basebullet[100];
shapebullet_mybullet[] MBs = new shapebullet_mybullet[100]; //mybuuletの分も追加

//オブジェクト
shapebullet_object[] objects = new shapebullet_object[100];

void settings(){
  size(window_size[0], window_size[1]);
}

void setup(){
  //{オブジェクト
  objects[0] = new shapebullet_object();
  //}オブジェクト
  
  //{弾丸
  //bb = new shapebullet_basebullet();
  //mb = new shapebullet_mybullet();
  
  for (int i=0;i<BBs.length;i++){
    BBs[i] = null; 
  }
  for (int i=0;i<MBs.length;i++){//mybuuletの分も追加
   MBs[i] = null; 
 }
 //}弾丸
}

void draw(){
  background(bg_color);
  
  //{弾丸
  ExplainKey();
  
  //単発処理
  //bb.upDate();
  //mb.upDate();
  
  //複数弾丸処理
  //UpdateBaseBullet();
  
  for (int i=0;i<MBs.length;i++){ //mybuuletの分も追加
    if (MBs[i] == null) continue;
    if (MBs[i].isDead) {MBs[i] = null;continue;};
    MBs[i].upDate();
  }
  //}弾丸
  
  //{オブジェクト
  checkDead(objects);
  upDateObject(objects);
  collision_bullets(objects, MBs);
  //}オブジェクト
}


void keyPressed(){
  //{弾丸
  if (key != ' ')return;
  if (!sw_fire) return;
  sw_fire = false;
  
  //InstanceBaseBullet();
  for (int i=0;i<MBs.length;i++){ //mybuuletの分も追加
    if(MBs[i]!=null)continue;
    MBs[i] = new shapebullet_mybullet();
    return;
  }
  println("発射限界です。");
  //}弾丸
}

void keyReleased(){
  //{弾丸
  sw_fire = true;
  //}弾丸
}

//{draw - 弾丸
void UpdateBaseBullet(){
  for (int i=0;i<BBs.length;i++){
    if (BBs[i] == null) continue;
    if (BBs[i].isDead) {BBs[i] = null;continue;};
    BBs[i].upDate();
  }
}

void ExplainKey(){
  text(String.format("Fire : \"%s\"", fire_key), 10, 10);
}

void InstanceBaseBullet(){
  for (int i=0;i<BBs.length;i++){
   if(BBs[i]!=null)continue;
    BBs[i] = new shapebullet_basebullet();
    return;
  }
  println("発射限界です。");
}
//}draw - 弾丸

//{draw - オブジェクト
private void checkDead(shapebullet_object IBaseObject[]){
  for (int i = 0; i < IBaseObject.length;i++)if (IBaseObject[i] != null && IBaseObject[i].getIsDead())IBaseObject[i] = null;
}
private void upDateObject(shapebullet_object IBaseObject[]){
  for (int i= 0; i < IBaseObject.length;i++)if(IBaseObject[i]!=null){
    IBaseObject[i].upDate();
  }
}
//}draw - オブジェクト
