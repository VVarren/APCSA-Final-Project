class Pong {

  Paddle LeftPaddle = new Paddle(0, 0);
  Paddle RightPaddle = new Paddle(width-width/30, 0);
  PongBall Ball = new PongBall();

  void display() {
    LeftPaddle.display();
    RightPaddle.display();
    Ball.display();
  }
  void update() {
    Ball.move();
    //getting user input
    if (keyPressed) {
      if (keyCode == DOWN) {
        RightPaddle.y += height/30;
      }
      if (keyCode == UP) {
        RightPaddle.y -= height/30;
      }
      if (key == 'w') {
        LeftPaddle.y -= height/30;
      }
      if (key == 's') {
        LeftPaddle.y += height/30;
      }
    }
    //boundary
    RightPaddle.y = constrain(RightPaddle.y, 0, height-RightPaddle.h);
    LeftPaddle.y = constrain(LeftPaddle.y, 0, height-RightPaddle.h);
    //detect collision
    if (Ball.x-(LeftPaddle.x+width/30) <= 10) {
      if (dist(Ball.x, Ball.y, LeftPaddle.x+width/30, LeftPaddle.y+(height/5)/2) <= height/5 ) {
        Ball.xVelocity = + abs(Ball.xVelocity);
      }
    }
    if ((RightPaddle.x+width/30) - Ball.x <= 30) {
      if (dist(Ball.x, Ball.y, RightPaddle.x-width/30, RightPaddle.y+(height/5)/2) <= height/5) {
        Ball.xVelocity = -Ball.xVelocity;;
      }
    }
  }
}
