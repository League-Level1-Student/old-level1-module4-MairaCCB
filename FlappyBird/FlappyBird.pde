  float x = 250;
  float y = 250;
  float width = 500;
  float height = 500;
  float gravity = 0.5;
  float birdYVelocity = 50;
  float pipeXPosition = 500;
  int upperPipeHeight = (int) random(100, 300);
  float pipeGap = 140;
  float lowerY;
  float pipeWidth = 50;
  char text;


void setup(){
  size(500, 500);
}


void draw(){
lowerY = upperPipeHeight + pipeGap;
  
background(0, 0, 0); 

fill(7, 24, 200);
stroke(70, 13, 76);
ellipse(x, y, 40, 40);

fill(200, 0, 100);
rect(pipeXPosition, 0, 50, upperPipeHeight);

fill(100, 0, 200);
rect(pipeXPosition, lowerY, 50, height - lowerY);

fill(0, 200, 0);
rect(0, 450, width, 50);

if(x >= pipeXPosition){
  text(text, 0, 0);
}

if(y >= height - 50){
  System.exit(0);
}

y += gravity;

pipeXPosition = pipeXPosition - 1;

teleportPipes();

  if(intersectsPipes()){
    System.exit(0);
  }
  
}
  
  
  boolean intersectsPipes() { 
     if (y < upperPipeHeight && x > pipeXPosition && x < (pipeXPosition + pipeWidth)){
          return true; }
     else if (y > lowerY && x > pipeXPosition && x < (pipeXPosition + pipeWidth)) {
          return true; }
     else { return false; }

}


void mousePressed(){
    y -= birdYVelocity;
}


void teleportPipes(){
  if(pipeXPosition < -50){
    pipeXPosition += 500;
     upperPipeHeight = (int) random(100, 300);
  lowerY = upperPipeHeight + pipeGap;
  }
}