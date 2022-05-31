class PongBall {
  int x = int(width/2);
  int y = int(height/2);
  int xVelocity;
  int yVelocity;

  PongBall() {
    int ySpawn = int(random(height));
    int LeftRight = int(random(2));
    int UpDown = int(random(2));
    if (LeftRight == 1) {
      xVelocity = int(random(4,5));
        if (UpDown == 1) {
          yVelocity = int(random(4,5));
        }
        else {
          yVelocity = int(random(-4,-5));
        }
    } else {
      xVelocity = -5;
      if (UpDown == 1) {
          yVelocity = int(random(4,5));
        }
        else {
          yVelocity = int(random(-4,-5));
        }
    }
    y = ySpawn;
  }
  void display() {
    ellipse(x, y, 15, 15);
  }


  void move() {
    x += xVelocity;
    y += yVelocity;
  }
  
  void respawn(){
    int LeftRight = int(random(2));
    int UpDown = int(random(2));
    if (LeftRight == 1) {
      xVelocity = int(random(4,5));
        if (UpDown == 1) {
          yVelocity = int(random(4,5));
        }
        else {
          yVelocity = int(random(-4,-5));
        }
    } else {
      xVelocity = -5;
      if (UpDown == 1) {
          yVelocity = int(random(4,5));
        }
        else {
          yVelocity = int(random(-4,-5));
        }
    }
    y = int(random(100,height-100));
    x = int(width/2);
  }
}
