class Pixel
{
  private int grid_size,x,y,brightness=0;
  Pixel(int X, int Y,int GridSize)
  {
    x=X;
    y=Y;
    grid_size=GridSize;
  }
  void AddBrightness(int NewBrightness)
  {
   if(brightness+NewBrightness>255)
     brightness=255;
   else
     brightness+=NewBrightness;
  }
  void SetBlack()
  {
    brightness=0;
  }
  void Draw()
  {
    fill(brightness);//processing is truely dust
    rect(x*grid_size,y*grid_size,grid_size,grid_size);
  }
  byte GetBrightness()
  {
     return (byte)brightness;
  }
}
