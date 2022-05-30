class PongBall {
  int x = int(width/2);
  int y = int(height/2);
  int xVelocity;
  int yVelocity;

  PongBall() {
    int LeftRight = int(random(2));
    int UpDown = int(random(2));
    if (LeftRight == 1) {
      xVelocity = 5;
        if (UpDown == 1) {
          yVelocity = 5;
        }
        else {
          yVelocity = -5;
        }
    } else {
      xVelocity = -5;
      if (UpDown == 1) {
          yVelocity = 5;
        }
        else {
          yVelocity = -5;
        }
    }
  }
  void display() {
    ellipse(x, y, 15, 15);
  }


  void move() {
    x += xVelocity;
    y += yVelocity;
  }
}
