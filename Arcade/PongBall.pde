class PongBall{
  int w = int(width/2);
  int y = int(height/2);
  
  void display(){
    ellipse(w,y,15,15);
  }
  void physics(){
    
  }
  
   void start(){
     int num = int(random(1));
     if (num == 1){
       w += 20;
      }
     else{
       y += 20;
     }
   }
}
