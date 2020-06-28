class Particle {
  float x, y;
  float tx, ty;

  Particle() {
    //translate(width/2, height/2);
    x = width/2;
    y = height/2;
    tx = random(5);
    ty = random(5);
  }

  void walk() {
    //perlin noise
    tx = tx + 0.01;
    ty = ty + 0.01;    
    x = noise(tx);
    y = noise(ty);

    x = map(x, 0, 1, 0, width);
    y = map(y, 0, 1, 0, height);

    //int choice = int(random(4));
    //if (choice == 1) {
    //  x++;
    //} else if (choice == 2) {
    //  x--;
    //} else if (choice == 0) {
    //  y++;
    //} else {
    //  y--;
    //}

    //x = constrain(x, 0, width-1);
    //y = constrain(y, 0, height-1);
  }

  void display() {
    color c = color(random(255), 0, random(255));
    stroke(c);
    point(x, y);
    //println(x, y);
  }
}
