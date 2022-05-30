class Paddle {

  int x;
  int y;
  int w = width/30;
  int h = height/5;

  Paddle(int x, int y) {
    this.x = x;
    this.y = y;
  }
  void display() {
    rect(x, y, w, h);
  }

  void move() {
  }
}
