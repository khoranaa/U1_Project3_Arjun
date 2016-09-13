PImage img;

int[] data = {190, 400, 750, 760, 900, 1050, 1300};
int i = 1;

void setup()
{
  fullScreen();
  for (int i = 0; i < data.length; i++);
  {
    line(data[i], 0, data[i], 100);
  }
}

void draw()
{
  background(51,123,255);
  
  strokeWeight(7);
  line(data[0], 0, data[0], 1000);
  line(data[1], 0, data[1], 1000);
  line(data[2], 0, data[2], 1000);
  line(data[3], 0, data[3], 1000);
  line(data[4], 0, data[4], 1000);
  line(data[5], 0, data[5], 1000);
  line(data[6], 0, data[6], 1000);
  
  strokeWeight(1);
  fill(0,255,0);
  rect(0,800,2000,200);
  
  strokeWeight(1);
  fill(255,165,0);
  triangle(50,500,65,450,80,500);
}