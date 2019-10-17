public int[] key_xy = {0, 0};

private void setAxis(){
  if(!keyPressed)return;
  if(key=='a')key_xy[0] = -1;
  if(key=='d')key_xy[0] = 1;
  if(key=='w')key_xy[1] = -1;
  if(key=='s')key_xy[1] = 1;
}

public void key_upDate(){
  key_xy[0] = 0;
  key_xy[1] = 0;
  setAxis();
}
