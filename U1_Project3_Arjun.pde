int[] data = {190, 400, 750, 760, 900, 1050, 1300};
int[] data2 = {190, 400, 750, 760, 900, 1050, 1300};
int i = 1;
float numLines = random(1000);
int yDirection;
int x = 50;
int y = 500;
int ySpeed = 16;
int x2 = 400;

void setup()
{
  fullScreen();
  for (float i = numLines; i < data.length; i++);
  {
    line(data[i], 0, data[i], 100);
  }
}

void draw()
{
  background(51,123,255);
  
  strokeWeight(7);
  line(data[0], 0, data[0], 400);
  line(data[1], 0, data[1], 200);
  line(data[2], 0, data[2], 300);
  line(data[3], 0, data[3], 300);
  line(data[4], 0, data[4], 250);
  line(data[5], 0, data[5], 400);
  line(data[6], 0, data[6], 150);
  
  strokeWeight(7);
  line(data2[0], 525, data2[0], 1000);
  line(data2[1], 325, data2[1], 1000);
  line(data2[2], 425, data2[2], 1000);
  line(data2[3], 425, data2[3], 1000);
  line(data2[4], 375, data2[4], 1000);
  line(data2[5], 525, data2[5], 1000);
  line(data2[6], 275, data2[6], 1000);
  
  strokeWeight(1);
  fill(0,255,0);
  rect(0,800,2000,200);
  
  fill(255,165,0);
  rect(x,y,50,50);
  
  if(keyPressed == true)
  {
    if (key == ' ')
    {
      yDirection = -1;
      y = y + (yDirection*ySpeed);
      fill(255,165,0);
      rect(x,y,50,50);
    }
  }
  else 
  {
    x = x + 2;
    y = y + 2;
  }
  
  if (y == 400)
  {
    y = height;
  }
  else if (y == 525)
  {
    y = height;
  }
  else if (y == 200)
  {
    y = height;
  }
  else if (y == 325)
  {
    y = height;
  }
  else if (y == 300)
  {
    y = height;
  }
  else if (y == 425)
  {
    y = height;
  }
  else if (x == 300)
  {
    y = height;
  }
  else if (y == 425)
  {
    y = height;
  }
  else if (y == 250)
  {
    y = height;
  }
  else if (y == 375)
  {
    y = height;
  }
  else if (y == 400)
  {
    y = height;
  }
  else if (y == 525)
  {
    y = height;
  }
  else if (y == 150)
  {
    y = height;
  }
  else if (y  == 275)
  {
    y = height;
  }
}