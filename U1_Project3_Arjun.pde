float[] data = {190, 400, 750, 760, 950, 1050, 1300};
float[] data2 = {190, 400, 750, 760, 950, 1050, 1300};
int i = 1;
float numLines = 100;
int yDirection;
float x = width*0.05;
float y = height*0.7;
int ySpeed = 16;
int score = 0;
int s = second();

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
  line(data[0], height*0, data[0], height*0.4);
  line(data[1], height*0, data[1], height*0.2);
  line(data[2], height*0, data[2], height*0.3);
  line(data[3], height*0, data[3], height*0.3);
  line(data[4], height*0, data[4], height*0.25);
  line(data[5], height*0, data[5], height*0.4);
  line(data[6], height*0, data[6], height*0.15);
  
  strokeWeight(7);
  line(data2[0], height*0.525, data2[0], height*1);
  line(data2[1], height*0.325, data2[1], height*1);
  line(data2[2], height*0.425, data2[2], height*1);
  line(data2[3], height*0.425, data2[3], height*1);
  line(data2[4], height*0.375, data2[4], height*1);
  line(data2[5], height*0.525, data2[5], height*1);
  line(data2[6], height*0.275, data2[6], height*1);
  
  strokeWeight(1);
  fill(0,255,0);
  rect(0,height*0.9,width*20,height*2);
  
  fill(255,165,0);
  rect(x,y,height*0.05,height*0.05);
  
  fill(255);
  rect(width*0.3,height*0.05,width*0.065,height*0.075);
  
  fill(255);
  rect(width*0.25,height*0.04,width*0.065,height*0.075);
  
  fill(255);
  rect(width*0.6,height*0.05,width*0.065,height*0.075);
  
  fill(255);
  rect(width*0.55,height*0.04,width*0.065,height*0.075);
  
  textSize(196);
  fill(255);
  text(score, width*0.4, height*0.2);
  
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
    x = width*0.05;
    y = height*0.5;
    score = 0;
    
    data[0]= 190;
    data2[0] = 190;
    data[1]= 400;
    data2[1] = 400;
    data[2]= 750;
    data2[2] = 750;
    data[3]= 760;
    data2[3] = 760;
    data[4]= 950;
    data2[4] = 950;
    data[5]= 1050;
    data2[5] = 1050;
    data[6]= 1300;
    data2[6] = 1300;
    
    delay(3000);
    
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
      if ((((((((x == data[0] - 50 && y < height*0.4) || (x == data2[0] - 50 && y > height*0.525) || (x == data[1] - 50 && y < height*0.2) || (x == data2[1] - 50 && y > height*0.325) || (x == data[2] - 50 && y < height*0.3) || 
      (x == data2[2] - 50 && y > height*0.425) && (x == data[3] - 50 && y < height*0.35) || (x == data2[3] - 50 && y > height*0.425) ||  (x == data[4] - 50 && y < height*0.25) || (x == data2[4] - 50 && y > height*0.375) || 
      (x == data[5] - 50 && y < height*0.4) || (x == data2[5] - 50 && y > height*0.525) || (x == data[6] - 50 && y < height*0.15) || (x == data2[6] - 50 && y > height*0.275))))))))
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
      if ((((((((x == data[0] && y > height*0.4) || (x == data2[0] && y < height*0.525) || (x == data[1] && y > height*0.200) || (x == data2[1] && y < height*0.325) || (x == data[2] && y > height*0.35) || (x == data2[2] && y < height*0.475)
      && (x == data[3] && y > height*0.3) || (x == data2[3] && y < height*0.425) ||  (x == data[4] && y > height*0.25) || (x == data2[4] && y < height*0.375) || (x == data[5] && y > height*0.4) ||
      (x == data2[5] && y < height*0.525) || (x == data[6] && y > height*0.15) || (x == data2[6] && y < height*0.275))))))))
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