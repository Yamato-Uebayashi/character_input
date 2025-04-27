class ResetButton extends Button {
  ResetButton(int x, int y, int width, int height) {
    super(x, y, width, height, "RESET");
  }
  
  void clickAction() {
    for (Pixel[] pixel_row : pixels) {
      for (Pixel pixel : pixel_row) {
        pixel.SetBlack();
      }
    }
  }
}
