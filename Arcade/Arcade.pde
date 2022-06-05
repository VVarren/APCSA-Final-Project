Pong Game;
PImage bird,background,startscreen,tube;
//word guess
//word maker (given these array of letters. make as many words as possible)
//Need to make my graphical interface
//Not BlackJack
void setup() {
  frameRate(60);
  size(600,600);
  //background(0);
  tube =  loadImage("tube.png");
  background = loadImage("background.png");
  startscreen = loadImage("startscreen.png");
  bird = loadImage("bird.png");
  //Need for later to change the size of the board
  //surface.setTitle("Hello World!");
  //surface.setSize(1500,1200);
  surface.setResizable(true);
  Game = new Pong();
  image(startscreen,0,0);
  //delay(1000);
}

void draw() {
  
  //background(0);
 //Game.display();
  //Game.update();
  //floppybird();
}

void floppybird(){
  image(tube,width/2,height/2);



}
