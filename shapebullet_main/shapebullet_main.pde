//大本の部分

int[] window_size = new int[]{500, 300};
int bg_color = 255;

shapebullet_basebullet bb;
shapebullet_mybullet mb;

void settings(){
  size(window_size[0], window_size[1]);
}

void setup(){
  bb = new shapebullet_basebullet();
  mb = new shapebullet_mybullet();
}

void draw(){
  background(bg_color);
  bb.upDate();
  mb.upDate();
}
