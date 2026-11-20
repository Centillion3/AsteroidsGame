class Asteroid extends Floater{
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -16; xCorners[1] = -8; xCorners[2] = 8; xCorners[3] = 16;
    yCorners[0] = 0; yCorners[1] = 16; yCorners[2] = 16; yCorners[3] = 0;
    
    xCorners[4] = 8; xCorners[5] = -8;
    yCorners[4] = -16; yCorners[5] = -16;
    
    myCenterX = (int)(Math.random()*601); myCenterY = (int)(Math.random()*601);
    myColor = color(200);
    myXspeed = (int)(Math.random() * 2) * 2 - 1;
    myYspeed = (int)(Math.random() * 2) * 2 - 1;
    myPointDirection = (int)(Math.random()*361);
  }
  
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;   
    turn(1);

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  } 
  
  public double getMyCenterX(){return myCenterX;}
  public double getMyCenterY(){return myCenterY;}
}
