class Pong {

  Paddle LeftPaddle = new Paddle(0, 0);
  Paddle RightPaddle = new Paddle(width-width/30, 0);
  PongBall Ball = new PongBall();
  int leftScore = 0;
  int rightScore = 0;

  void display() {
    LeftPaddle.display();
    RightPaddle.display();
    Ball.display();
    textSize(50);
    //For left paddle
    scoreBoard((width*1)/3,50,leftScore);
    //For right paddle
    scoreBoard((width*2)/3,50,rightScore);
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
    //boundary (paddle)
    RightPaddle.y = constrain(RightPaddle.y, 0, height-RightPaddle.h);
    LeftPaddle.y = constrain(LeftPaddle.y, 0, height-RightPaddle.h);
    //boundary (in ur walls (top/bottom))
    if (Ball.y <= 10) {
      Ball.yVelocity = abs(Ball.yVelocity);
    }
    if (Ball.y >= height-10) {
      Ball.yVelocity = -Ball.yVelocity;
    }
    //detect collision
    //left
    if (Ball.x-(LeftPaddle.x+width/30) <= 10) {
      if (dist(Ball.x, Ball.y, LeftPaddle.x+width/30, LeftPaddle.y+(height/5)/2) <= (height/5)/2) {
        Ball.xVelocity = + abs(Ball.xVelocity);
        Ball.xVelocity += random(2);
        Ball.yVelocity += random(2);
        
      }
    }
    //right
    if ((RightPaddle.x+width/30) - Ball.x <= 33) {
      if (dist(Ball.x, Ball.y, RightPaddle.x-width/30, RightPaddle.y+(height/5)/2) <= ((height/5)/2)+10) {
        Ball.xVelocity = -Ball.xVelocity;
        Ball.xVelocity -= random(2);
        Ball.yVelocity -= random(2);
        ;
      }
    }
    //scoring
    if(Ball.x >= width-(width/30)){
      leftScore++;
      
      Ball.respawn();
      
    }
    if(Ball.x <= + (width/30)){
      rightScore++;
      
      Ball.respawn();
    }
  }
  
  void scoreBoard(int positionX,int positionY, int Score){
    text(Score,positionX,positionY);
  }
  
  
}
