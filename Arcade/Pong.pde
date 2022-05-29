class Pong{
  
  Paddle LeftPaddle = new Paddle(0,0);
  Paddle RightPaddle = new Paddle(width-width/30,0);
  
  void display(){
    LeftPaddle.display();
    RightPaddle.display();
  }
  
  void update(){
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
    if (RightPaddle.y <= 0){
      RightPaddle.y =0;
    }  
    if (RightPaddle.y >= 0){
      RightPaddle.y =0;
    }  
   }
  }




}
