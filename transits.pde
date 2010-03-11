int s = 650; // star / canvas size
float p = 0.1 * s; // planet size

float x = 0.0;

float speed = 1.0;
int pause = 100;

void setup() {
  size(s, s);
  smooth();

  frameRate(30);
  background(0);
}

void draw() {
  fill(255);
  ellipse(s/2, s/2, s, s);

  x += speed;

  if (x > s + p + pause) { // Past the RH edge of the star.
    x = 0;
  }

  translate(x, 0);
  fill(0);
  ellipse(-p/2, s/2, p, p);
}

void keyPressed() {
  switch(int(key)) {
    case 49: // earth
      p = 0.0091 * s;
      break;
    case 50: // jupiter
      p = 0.1027 * s;
      break;      
    case 48: // 0
      p = 0.1 * s;
      break;
    case 61: // =
      p *= 1.1;
      break;
    case 45: // -
      p *= 1/1.1;
      break;
    case 102: // f
      speed *= 1.1;
      break;
    case 115: // s
      speed *= 1/1.1;
      break;
    case 100: // d
      speed = 1.0;
      break;
  }
}
