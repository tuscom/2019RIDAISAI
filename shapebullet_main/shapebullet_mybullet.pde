public class shapebullet_mybullet extends shapebullet_basebullet
{
  int cx = 250, cy = 250; //回転運動の中心
  int r = 50; //回転運動の半径
  float rad = 90;
  int fr = 0; //フレーム数
  
  void move(){
    cy-=2;
    if(fr%2==0){
      x = cx - r * Math.cos(rad);
      y = cy - r * Math.sin(rad);
      rad+=0.5;
      if(rad==359) rad=0;
    }
    fr++;
  }
}
