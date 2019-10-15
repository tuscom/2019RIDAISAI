float x=100, y=100;
//float spx=random(10), spy=random(10);

Sikaku[] s = new Sikaku[10];
//Sikaku s2;
//Sikaku s3;
//Sikaku s4;

void setup() {
  size(1000, 1000);
  for (int i=0; i<s.length; i++) {
    if(i%2==0){
      s[i] = new Sikaku(100+20*i, 100+10*i);
    } else{
      s[i] = new Sikaku(100+10*i, 100+20*i);
    }
  }
  //s2 = new Sikaku(200, 100);
  //s3 = new Sikaku(100, 200);
  //s4 = new Sikaku(200,200);
}

class Sikaku {
  float x;//座標
  float y;

  float spx;//速度
  float spy;

  float r;//色
  float g;
  float b;

  Sikaku(float x, float y) {
    this.x = x; 
    this.y =y;

    r = random(255);
    g = random(255);
    b = random(255);

    spx = 5;
    spy = 5;
  }

  float getX() {
    return x;
  }

  float getY() {
    return y;
  }

  void printEllipse() {
    noFill();
    stroke(r, g, b);
    strokeWeight(10);
    ellipse(x, y, 100, 100);
  }

  void move() {
    x += spx;
    y += spy;

    println(spx);
    if (x+50 > width || x < 50) spx *= -1;
    if (y + 50> height || y < 50) spy *= -1;
  }
}

void draw() {
  clear();


for(int i=0; i<10; i++){
  s[i].printEllipse();
  s[i].move();
}
  /*
  noFill();
   stroke((int)random(255), random(255), random(255));
   strokeWeight(10);
   ellipse(x, y, 100, 100);
   x += spx;
   y += spy;
   
   //spy=random(-10, 10);
   
   if (x+50>width || x<50) spx = -spx;
   if (y+50>height || y<50) spy = -spy;
   */
}
