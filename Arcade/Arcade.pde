Pong Game;

void setup() {
  size(700, 500);
  background(0);
  //Need for later to change the size of the board
  //surface.setTitle("Hello World!");
  //surface.setSize(1500,1200);
  surface.setResizable(true);
  Game = new Pong();
  //delay(1000);
}

void draw() {
  
  background(0);
  Game.display();
  Game.update();
}
