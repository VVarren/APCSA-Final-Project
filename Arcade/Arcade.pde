Pong Game;

void setup(){
  size(700,500);
  background(0);
  Game = new Pong();
}

void draw(){
  background(0);
  Game.display();
  Game.update();
}
