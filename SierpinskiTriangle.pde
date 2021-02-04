public void setup()
{
  size(400, 400);
  background (137,235,52);

}
public void draw()
{
  sierpinski (0, 400, 400);

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 20)
  {
    noStroke();
    fill(4, 57, 204);
    triangle (x, y, x + len/2, y - len, x + len, y);
  }
  else 
  {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
