abstract class Button {
  int x, y, width, height;
  String label;
  
  Button(int x, int y, int width, int height, String label) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    this.label = label;
  }
  
  void display() {
    fill(32, 200, 255);
    rect(x, y, width, height);
    fill(0);
    textSize(51);
    text(label, x + 10, y + 15, width, height);
  }
  
  abstract void clickAction();
}
