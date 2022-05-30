class Pong{
  
  Paddle LeftPaddle = new Paddle(0,0);
  Paddle RightPaddle = new Paddle(width-width/30,0);
  PongBall Ball = new PongBall();
  
  void display(){
    LeftPaddle.display();
    RightPaddle.display();
    Ball.display();
    
  }
  void update(){
    Ball.move();
   //getting user input
   if(keyPressed){
    if (keyCode == DOWN){
       RightPaddle.y += height/30;
    }
    if (keyCode == UP){
       RightPaddle.y -= height/30;
    }   
     if (key == 'w'){
       LeftPaddle.y -= height/30;
    }
    if (key == 's'){
       LeftPaddle.y += height/30;
    }  
    //boundary
    RightPaddle.y = constrain(RightPaddle.y,0,height-RightPaddle.h);
    LeftPaddle.y = constrain(LeftPaddle.y,0,height-RightPaddle.h);    
   }
  }




}
