import java.util.Random;
Random gen;
float[] vals;
float[] norms;

void setup() {
  size(400, 300);
  vals = new float[width];
  norms = new float[width];

  //gen = new Random();
  //background(255);
}
void draw() {
  background(100);

  for (int i =0; i<100; i++) { 
    float n = sim();

    int index = int(n*width);
    vals[index]++;
    stroke(255,24);

    boolean normal = false;
    float maxy = 0.0;

    for (int x = 0; x < vals.length; x++ ) {
      line(x, height, x, height-norms[x]);
      if (vals[x] > height) normal = true;
      if (vals[x] > maxy) maxy = vals[x];
    }

    for (int x = 0; x < vals.length; x++ ) {

      if (normal) norms[x] = (vals[x]/maxy)*height;
      else norms[x] = vals[x];
    }
  }
  //noStroke();
  //float x = (float)gen.nextGaussian();
  //x *= 50;
  //x += 200; 
  //fill(0, 25);

  //ellipse(width/2, height/2, x*0.5, x*.5);
  //ellipse(x, 150, 20, 20);
}

float sim() {
  boolean found = false;
  int hack = 0;
  while (!found && hack < 10000) {
    float r1 = (float)random(1);
    float r2 = (float)random(1);
    float y = r1*r1*r1;

    if (r2 < y) {
      found = true;
      return r1;
    }
    hack++;
  }
  return 0;
}
