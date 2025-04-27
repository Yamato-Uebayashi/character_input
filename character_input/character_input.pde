Pixel[][] pixels = new Pixel[28][28];
int grid_size = 30, old_i = 28, old_j = 28;
byte[] save_data = new byte[784];
boolean old_mousePressed = false;
String filename;

Button saveButton;
Button resetButton;
Button exitButton;

void setup() {
  size(1040, 840); // grid_size * 28 + 200, grid_size * 28
  for (byte i = 0; i < 28; ++i) {
    for (byte j = 0; j < 28; ++j) {
      pixels[i][j] = new Pixel(j, i, grid_size);
    }
  }
  textSize(60);

  int buttonWidth = 150;
  int buttonHeight = 80;
  int saveY = 275;
  int resetY = saveY + 25 + buttonHeight;
  int exitY = resetY + 25 + buttonHeight;
  
  saveButton = new SaveButton(865, saveY, buttonWidth, buttonHeight);
  resetButton = new ResetButton(865, resetY, buttonWidth, buttonHeight);
  exitButton = new ExitButton(865, exitY, buttonWidth, buttonHeight);
}

void draw() {
  background(127);
  stroke(64, 0, 0);
  for (Pixel[] pixel_row : pixels) {
    for (Pixel pixel : pixel_row) {
      pixel.Draw();
    }
  }
  
  byte i = byte(mouseY / grid_size), j = byte(mouseX / grid_size);
  if (mousePressed && (i != old_i || j != old_j) && (0 <= i && i < 28 && 0 <= j && j < 28)) {
    pixels[i][j].AddBrightness(255);
    if (i != 0) pixels[i - 1][j].AddBrightness(128);
    if (i != 27) pixels[i + 1][j].AddBrightness(128);
    if (j != 0) pixels[i][j - 1].AddBrightness(128);
    if (j != 27) pixels[i][j + 1].AddBrightness(128);
    old_i = i;
    old_j = j;
  }

  saveButton.display();
  resetButton.display();
  exitButton.display();

  old_mousePressed = mousePressed;
}

void mousePressed() {
  if (865 <= mouseX && mouseX <= 865 + 150) {
    if (saveButton.y <= mouseY && mouseY <= saveButton.y + 80) {
      saveButton.clickAction();
    } else if (resetButton.y <= mouseY && mouseY <= resetButton.y + 80) {
      resetButton.clickAction();
    } else if (exitButton.y <= mouseY && mouseY <= exitButton.y + 80) {
      exitButton.clickAction();
    }
  }
}
