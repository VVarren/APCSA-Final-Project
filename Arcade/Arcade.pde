import processing.sound.*;
SoundFile ost;


MainScreen main;
Pong PongGame;
WordGuess WordGame;
//word guess
//word maker (given these array of letters. make as many words as possible)
//Need to make my graphical interface
//Not BlackJack

enum game{
  MainScreen,
  Pong,
  WordGuess
}
game g = game.MainScreen;
void setup() {
  frameRate(60);
  size(600,600);
  background(0);
  PongGame = new Pong();
    WordGame = new WordGuess();
  //Need for later to change the size of the board
  ost = new SoundFile(this,"ost.mp3");
  ost.loop();
  ost.amp(0.25);
  ost.play();

   
  main = new MainScreen();
  
}

void draw() {
  background(0);
   switch(g){
     case MainScreen:
       main.display();
       break;
     case Pong:
       PongGame.display();
       PongGame.update();
       break;
     case WordGuess:
       WordGame.displayWord();
       break;
   }
  //ping 290 - 380
  //guess 448 - 540
  //WordGame.displayWord();
 //background(0);
 //PongGame.display();
  //PongGame.update();

}

void keyPressed(){
    if(g == game.WordGuess){
      WordGame.keyPressed();
    }
  }
  
void mouseClicked(){
    if(g == game.MainScreen){
      main.mouseClicked();
    }
    
}
