  float x = 250;
  float y = 250;
  float gravity = 0.5;
  float birdYVelocity = 0;
  float pipeXPosition = 500;
  int upperPipeHeight = (int) random(100, 300);
  float upperY = 0;
  float pipeGap= 70;
  float lowerY = upperY + upperPipeHeight + pipeGap;
  float birdY = y;
  float birdX = x;
  float lowerPipeTop = lowerY;
  float pipeX = pipeXPosition;
  float pipeWidth = 50;


void setup(){
  size(500, 500);
}


void draw(){
  
  background(0, 0, 0); 
  fill(7, 24, 200);
stroke(70, 13, 76);
ellipse(x, y, 40, 40);

fill(200, 0, 100);
rect(pipeXPosition, upperY, 50, upperPipeHeight);

y += birdYVelocity;
birdYVelocity += gravity;

pipeXPosition = pipeXPosition - 1;

teleportPipes();

 if(pipeXPosition <= -50){
  upperPipeHeight = (int) random(100, 300);
  lowerY = upperY + upperPipeHeight + pipeGap;
}
  
  fill(100, 0, 200);
  rect(pipeXPosition, lowerY, 50, 500 - lowerY);
  
  teleportPipes();
  
  if(intersectsPipes()){
    
  }
  
}
  
  boolean intersectsPipes() { 
     if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+pipeWidth)){
          return true; }
     else if (birdY>lowerPipeTop && birdX > pipeX && birdX < (pipeX+pipeWidth)) {
          return true; }
     else { return false; }

}

void mousePressed(){
    birdYVelocity = -15;
}

void teleportPipes(){
  if(pipeXPosition < -50){
    pipeXPosition += 500;
  }
}
