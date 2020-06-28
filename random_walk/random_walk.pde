Particle p;
float time = 0;

void setup() {
  size(600, 600);
  background(255);

  p = new Particle();
}

void draw() {
  //perlin noise
  //background(0);
  //fill(255);
  //time = time + 0.01;

  //float x = noise(time);
  //x = map(x, 0, 1, 0, width);
  //ellipse(x, height/2, 40, 40);
  
  //random walk
  for (int i=0; i<100; i++) {
    p.walk();
    p.display();
  }
}
