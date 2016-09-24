int[] data = {190, 400, 750, 760, 900, 1050, 1300};
int[] data2 = {190, 400, 750, 760, 900, 1050, 1300};
int i = 1;
float numLines = random(1000);
int yDirection;
int x = 50;
int y = 500;
int ySpeed = 16;
int x2 = 400;
int score = 0;

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
  
  fill(255);
  rect(500,50,75,75);
  
  fill(255);
  rect(450,40,75,75);
  
  fill(255);
  rect(900,50,75,75);
  
  fill(255);
  rect(850,40,75,75);
  
  textSize(196);
  fill(255);
  text(score, 600, 200);
  
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
  
  if (collision())
  {
    x = 50;
    y = 500;
    score = 0;
  }
  
  if (noCollision())
  {
    score = score + 1;
  }
}
  
  boolean collision()
  {
    boolean returnValue = false;
    {
      if ((((((((x == data[0] && y < 400) || (x == data2[0] && y > 525) || (x == data[1] && y < 200) || (x == data2[1] && y > 325) || (x == data[2] && y < 300) || (x == data2[2] && y > 425)
      && (x == data[3] && y < 300) || (x == data2[3] && y > 425) ||  (x == data[4] && y < 250) || (x == data2[4] && y > 375) || (x == data[5] && y < 400) ||
      (x == data2[5] && y > 525) || (x == data[6] && y < 150) || (x == data2[6] && y > 275))))))))
      {
      returnValue = true;   
   }
  }
return returnValue;
   }
 
  boolean noCollision()
  {
    boolean returnValue = false;
    {
      if ((((((((x == data[0] && y > 400) || (x == data2[0] && y < 525) || (x == data[1] && y > 200) || (x == data2[1] && y < 325) || (x == data[2] && y > 300) || (x == data2[2] && y < 425)
      && (x == data[3] && y > 300) || (x == data2[3] && y < 425) ||  (x == data[4] && y > 250) || (x == data2[4] && y < 375) || (x == data[5] && y > 400) ||
      (x == data2[5] && y < 525) || (x == data[6] && y > 150) || (x == data2[6] && y < 275))))))))
      {
        returnValue = true;
      }
      return returnValue;
    }
  }