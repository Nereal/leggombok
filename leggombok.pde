int score1;
int score2;
PImage hatter;
PImage filter;
PImage ball;
boolean ok=false;

class Labda {
  float x;
  float y;
  float sebx;
  float seby;

  void alkot() {
    sebx=width/200;
    seby=height/200;
    x=300;
    y=100;
  }
  void rajzol(PImage c) {
    image(c, x, y);
  }
  void mozgas() {
    x=x+sebx;
    y=y+seby;

    if ((sebx<0) && (x<200))
    {
      sebx=random(0, 4);
    } else if ((sebx>=0) && (x>width-100)) {
      sebx=-random(0, 4);
    }

    if ((y<10) || (y>300) ) {
      if (seby<0)
      {
        seby=random(0, 4);
      } else {
        seby=-random(0, 4);
      }
    }
  }
}

Labda labdak[]=new Labda[10];

void setup() {
  size(903, 700);
  hatter = loadImage("hatter.jpg");
  filter = loadImage("filter.png");
  ball = loadImage("labda.png");
  background(hatter);
  for(int i=0; i<10; i++){
    labdak[i]=new Labda();
    labdak[i].alkot();
  }
}

void draw() {
  background(hatter);
  textSize(10);
  fill(100, 60, 0);
  for(int i=0; i<10; i++){
  labdak[i].rajzol(ball);
  }
  image(filter, 0, 0);
    for(int i=0; i<10; i++){
  labdak[i].mozgas();
  }
}