int x = 200;
int y = 350;
int w = 350;

Car A = new Car(350, 300, 15, 5);
Car B = new Car(15, 45, 15, 10);
Car C = new Car(125, 15, 15, 5);
Car D = new Car(34, 225, 15, 15);
Car E = new Car(375, 145, 15, 3);

void setup(){
  size(400, 400);
}


void draw(){
  background(0, 0, 0);
  
  fill(0, 100, 255);
  ellipse(x, y, 30, 30);
  
  boundries();
  
  A.display();
  B.display();
  C.display();
  D.display();
  E.display();
  
  A. moveLeft();
  B. moveRight();
  C. moveLeft();
  D. moveRight();
  E. moveLeft();
  
  A.display();
  B.display();
  C.display();
  D.display();
  E.display();
  


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
      fill(0, 255, 0);
      rect(CarX, CarY, 50, CarSize);
}

void moveLeft(){
  CarX = CarX - CarSpeed;
  
  if(CarX < 0){
    CarX = 0;
  }
}

void moveRight(){
  CarX = CarX + CarSpeed;
  
  if(CarX > w){
    CarX = w;
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
      if ((y > car.getY() && y < car.getY()+50) && (x > car.getX() && x < car.getX()+car.getSize()))
      {
             return true;
      }
      else 
      {
             return false;
      }
}
