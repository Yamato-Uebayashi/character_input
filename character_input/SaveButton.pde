class SaveButton extends Button {
  SaveButton(int x, int y, int width, int height) {
    super(x, y, width, height, "SAVE");
  }
  
  void clickAction() {
    for (int i = 0; i < 28; ++i) {
      for (int j = 0; j < 28; ++j) {
        save_data[i * 28 + j] = pixels[j][i].GetBrightness();
      }
    }
    filename = year() + "_" + nf(month(), 2) + "_" + nf(day(), 2) + "_" + nf(hour(), 2) + "_" + nf(minute(), 2) + "_" + nf(second(), 2) + ".bin";
    saveBytes(filename, save_data);
  }
}
