int s = 650; // star / canvas size
float p = 0.5 * s; // planet size

float x = 0.0;

float speed = 3.0;
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