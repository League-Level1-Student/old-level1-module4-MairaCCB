void setup(){
  size(500, 500);
}


void draw(){
  int x = 250;
  int y = 250;
  int gravity = 1;
  int birdYVelocity = 30;
  
  background(0, 0, 0); 
  
  fill(7, 24, 200);
stroke(70, 13, 76);
ellipse(x, y, 40, 40);

y ++;

fill(200, 12, 176);
rect(100, 300, 50, 200);


}

void mousePressed(){
  int birdYVelocity = 30;
  int y = 250;
  y = y + birdYVelocity;
}
