//大本の部分

int[] window_size = new int[]{500, 300};
int bg_color = 255;

shapebullet_basebullet bb;

void settings(){
  size(window_size[0], window_size[1]);
}

void setup(){
  bb = new shapebullet_basebullet();
}

void draw(){
  background(bg_color);
  bb.upDate();
}
