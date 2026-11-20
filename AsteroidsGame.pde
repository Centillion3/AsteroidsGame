Spaceship spaceship;
Asteroid asteroid;

boolean isUpPressed = false;
boolean isLeftPressed = false;
boolean isRightPressed = false;

Star[] stars = new Star[100];
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();

public void setup() 
{
  size(600, 600);
  spaceship = new Spaceship();
  asteroid = new Asteroid();
  for(int i = 0; i < 100; i++){stars[i] = new Star();}
  for(int i = 0; i < 15; i++){asteroids.add(new Asteroid());}
}

public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  for(int i = 0; i < asteroids.size(); i++){
    asteroids.get(i).move();
    asteroids.get(i).show();
    if(dist((float)asteroids.get(i).getMyCenterX(), 
    (float)asteroids.get(i).getMyCenterY(), 
    (float)spaceship.getMyCenterX(), 
    (float)spaceship.getMyCenterY()) <= 30){
      asteroids.remove(i);
    }
  }
  if (isUpPressed) {
    spaceship.accelerate(0.1);
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
