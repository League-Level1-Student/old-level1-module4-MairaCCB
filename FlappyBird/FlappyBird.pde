float x = 250;
  float y = 250;
  float gravity = 1;
  float birdYVelocity = 0;
  float pipeXPosition = 500;
  int upperPipeHeight = (int) random(100, 300);

void setup(){
  size(500, 500);
}


void draw(){
  
  background(0, 0, 0); 
  fill(7, 24, 200);
stroke(70, 13, 76);
ellipse(x, y, 40, 40);

fill(200, 0, 100);
rect(pipeXPosition, 0, 50, upperPipeHeight);

y += birdYVelocity;
birdYVelocity += gravity;

pipeXPosition = pipeXPosition - 1;

teleportPipes();
}

void mousePressed(){
    birdYVelocity = -15;
}

void teleportPipes(){
  if(pipeXPosition < -50){
    pipeXPosition += 500;
  }
  
}
