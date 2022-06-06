PImage mainscreen;


class MainScreen {
  MainScreen() {
    mainscreen = loadImage("mainscreen.png");
    PongGame = new Pong();
    WordGame = new WordGuess();
  }
  void display() {
    image(mainscreen,0,0);
    circle(mouseX,mouseY,20);
  }
  void mouseClicked() {

    if (mouseY >= 290 && mouseY <= 380) {
      g = game.Pong;
    }
    if (mouseY >= 448 && mouseY <= 540) {
      g = game.WordGuess;
    }
  }
}
