int x = 200;
int y = 370;
int w = 450;

Car A = new Car(125, 35, 15, 5); 
Car B = new Car(15, 95, 15, 8); 
Car C = new Car(375, 175, 15, 3); 
Car D = new Car(34, 250, 15, 7); 
Car E = new Car(350, 325, 15, 4); 


void setup(){
  size(400, 400);
}


void draw(){
  background(0, 0, 0);
  
  fill(0, 200, 255);
  stroke(0, 200, 255);
  ellipse(x, y, 30, 30);
  
  boundries();
  
  A.display();
  B.display();
  C.display();
  D.display();
  E.display();
  
  A. moveLeft();
  A.display();
   
  B. moveRight();
  B.display();
  
  C. moveLeft();
  C.display();
  
  D. moveRight();
  D.display();
  
  E. moveLeft();
  E.display();
  
  
if(intersects(A) || intersects(B) || intersects(C) || intersects(D) || intersects(E)){
  y = 370;
  x = 200;
}


}

void keyPressed(){
      if(key == CODED){
            if(keyCode == UP)
            {
                  y -= 10;  //Frog Y position goes up
            }
            else if(keyCode == DOWN)
            {
                  y += 10;   //Frog Y position goes down 
            }
            else if(keyCode == RIGHT)
            {
                  x += 10;   //Frog X position goes right
            }
            else if(keyCode == LEFT)
            {
                  x -= 10;   //Frog X position goes left
            }
      }
}

void boundries(){
  if(x > 400){
    x = 400;
  }
  
  else if(y > 400){
    y = 400;
  }
  
  else if(x < 0){
    x = 0;
  }
  
  else if(y < 0){
    y = 0;
  }
}


public class Car {
  int CarX;
  int CarY;
  int CarSize; 
  int CarSpeed;
  
  void display() {
      fill(105, 0, 205);
      stroke(105, 0, 205);
      rect(CarX, CarY, 50, CarSize);
}

void moveLeft(){
  CarX = CarX - CarSpeed;
  
  if(CarX < -50){
    CarX = 400;
  }
}

void moveRight(){
  CarX = CarX + CarSpeed;
  
  if(CarX > 450){
    CarX = 0;
  }
}

int getX(){
  return CarX;
}

int getY(){
  return CarY;
}

int getSize(){
  return CarSize;
}
  
  public Car(int CarX, int CarY, int CarSize, int CarSpeed){
    this.CarX = CarX;
    this.CarY = CarY;
    this.CarSize = CarSize;
    this.CarSpeed = CarSpeed;
  }
  
}

boolean intersects(Car car) {
      if ((y > car.getY() && y < car.getY()+30) && (x > car.getX() && x < car.getX()+car.getSize()))
      {
             return true;
      }
      else 
      {
             return false;
      }
}
