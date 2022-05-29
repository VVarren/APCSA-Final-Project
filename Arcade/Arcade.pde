Pong Game;

void setup(){
  size(700,500);
  background(0);
  //surface.setTitle("Hello World!");
  surface.setResizable(true);
  Game = new Pong();
  surface.setSize(200,200);
}

void draw(){
  background(0);
  Game.display();
  Game.update();
}
