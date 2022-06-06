Pong PongGame;
WordGuess WordGame;
//word guess
//word maker (given these array of letters. make as many words as possible)
//Need to make my graphical interface
//Not BlackJack
void setup() {
  frameRate(60);
  size(600,600);
  background(0);

  //Need for later to change the size of the board

  PongGame = new Pong();
  WordGame = new WordGuess();
  //delay(1000);
}

void draw() {
  
  //WordGame.displayWord();
 //background(0);
 //PongGame.display();
  //PongGame.update();

}

void keyPressed(){
    WordGame.keyPressed();
  }
