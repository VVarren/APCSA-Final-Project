class Paddle{

  float x;
  private float y;
  float w = width/30;
  float h = height/5;

  Paddle(float x,float y){
    this.x = x;
    this.y = y;

  }
  void display(){
    rect(x,y,w,h);
  }
  
  void move(){
    
  }
  
}
