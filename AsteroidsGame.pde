Spaceship spaceship;

boolean isUpPressed = false;
boolean isLeftPressed = false;
boolean isRightPressed = false;

Star[] stars = new Star[100];

public void setup() 
{
  size(600, 600);
  spaceship = new Spaceship();
  for(int i = 0; i < 100; i++){stars[i] = new Star();}
}

public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  if (isUpPressed) {
    spaceship.accelerate(0.2);
  }
  if (isLeftPressed) {
    spaceship.turn(-7);
  }
  if (isRightPressed) {
    spaceship.turn(7);
  }
  
  spaceship.move();
  spaceship.show();
}


public void keyPressed() {
  if (key == 'w') isUpPressed = true;
  if (key == 'a') isLeftPressed = true;
  if (key == 'd') isRightPressed = true;
  if (key == 'h') spaceship.hyperSpace();
}


public void keyReleased() {
  if (key == 'w') isUpPressed = false;
  if (key == 'a') isLeftPressed = false;
  if (key == 'd') isRightPressed = false;
}
