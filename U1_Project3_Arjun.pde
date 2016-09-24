int[] data = {190, 400, 750, 760, 900, 1050, 1300};
int[] data2 = {190, 400, 750, 760, 900, 1050, 1300};
int i = 1;
float numLines = 100;
int yDirection;
int x = 50;
int x2 = data[0];
int y = 500;
int ySpeed = 16;
int score = 0;

void setup()
{
  fullScreen();
  //for (float i = numLines; i < data.length; i++);
  //{
    //line(data[i], 0, data[i], 400);
    //line(data2[i], 525, data[i], 1000);
  //}
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
  
  if (lines())
  {
    data[0] = width - 1;
    data2[0] = width - 1;  
  }
  
  if (lines2())
  {
    data[1] = width - 1;
    data2[1] = width - 1;  
  }
  
  if (lines3())
  {
    data[2] = width - 1;
    data2[2] = width - 1;  
  }
  
  if (lines4())
  {
    data[3] = width - 1;
    data2[3] = width - 1;  
  }
  
  if (lines5())
  {
    data[4] = width - 1;
    data2[4] = width - 1;  
  }
  
  if (lines6())
  {
    data[5] = width - 1;
    data2[5] = width - 1;  
  }
  
  if (lines7())
  {
    data[6] = width - 1;
    data2[6] = width - 1;  
  }
  
  data[0] = data[0] - 1;
  data2[0] = data2[0] - 1;
  data[1] = data[1] - 1;
  data2[1] = data2[1] - 1;
  data[2] = data[2] - 1;
  data2[2] = data2[2] - 1;
  data[3] = data[3] - 1;
  data2[3] = data2[3] - 1;
  data[4] = data[4] - 1;
  data2[4] = data2[4] - 1;
  data[5] = data[5] - 1;
  data2[5] = data2[5] - 1;
  data[6] = data[6] - 1;
  data2[6] = data2[6] - 1; 

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
  
  boolean lines()
  {
    boolean returnValue = false;
    {
      if (data[0] < 0)
      if (data2[0] < 0)
      {
        returnValue = true;
      }
      return returnValue;
    }
  }
  
  boolean lines2()
  {
    boolean returnValue = false;
    {
      if (data[1] < 1)
      if (data2[1] < 1)
      {
        returnValue = true;
      }
      return returnValue;
    }
  }
  
  boolean lines3()
  {
    boolean returnValue = false;
    {
      if (data[2] < 1)
      if (data2[2] < 1)
      {
        returnValue = true;
      }
      return returnValue;
    }
  }
  
  boolean lines4()
  {
    boolean returnValue = false;
    {
      if (data[3] < 1)
      if (data2[3] < 1)
      {
        returnValue = true;
      }
      return returnValue;
    }
  }
  
  boolean lines5()
  {
    boolean returnValue = false;
    {
      if (data[4] < 1)
      if (data2[4] < 1)
      {
        returnValue = true;
      }
      return returnValue;
    }
  }
  
  boolean lines6()
  {
    boolean returnValue = false;
    {
      if (data[5] < 1)
      if (data2[5] < 1)
      {
        returnValue = true;
      }
      return returnValue;
    }
  }
  
  boolean lines7()
  {
    boolean returnValue = false;
    {
      if (data[6] < 1)
      if (data2[6] < 1)
      {
        returnValue = true;
      }
      return returnValue;
    }
  }