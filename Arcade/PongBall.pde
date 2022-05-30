class PongBall{
  int x = int(width/2);
  int y = int(height/2);
  int xVelocity;
  int yVelocity;
  
  PongBall(){
    int num = int(random(2));
     if (num == 1){
       xVelocity = 5;
      }
     else{
       xVelocity = -5;
     }
  }
  void display(){
    ellipse(x,y,15,15);
  }
  void physics(){
    //keep velocity and bounce it when
    // touch x and it moves y
  }
  
   void move(){
     x += xVelocity;
   }
}
