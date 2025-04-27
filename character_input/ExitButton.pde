class ExitButton extends Button {
  ExitButton(int x, int y, int width, int height) {
    super(x, y, width, height, "EXIT");
  }
  
  void clickAction() {
    exit();
  }
}
