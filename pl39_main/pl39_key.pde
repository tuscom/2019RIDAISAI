public int[] key_xy = {0, 0};

void keyPressed(){

}

void keyReleased(){
  
}

private void setAxis(){
  key_xy[0] = 0;
  key_xy[1] = 0;
  if(!keyPressed)return;
  //if(!keyPressed){
  //  key_xy[0] = 0;
  //  key_xy[1] = 0;
  //  return;
  //}
  if(key=='a')key_xy[0] = -1;
  if(key=='d')key_xy[0] = 1;
  if(key=='w')key_xy[1] = -1;
  if(key=='s')key_xy[1] = 1;
}

public void key_upDate(){
  setAxis();
}
