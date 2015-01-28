float x = 200; 
float y = 300; 
float xSpeed = 4; 
float ySpeed = 5;

void setup() { 
  size(600, 600); 
  ellipseMode(CENTER);
}

void draw() {
  background(0);
  fill(255); 
  stroke(255);
  ellipse(x, y, 50, 50); 

  //ySpeed = ySpeed + 0.5; 
  x=x+xSpeed; 
  y=y+ySpeed; 

  if ((x>width-25) || (x<25)) {//left and right
    xSpeed = -xSpeed;
  } 
  if (y>height-25) {
    ySpeed=-ySpeed;
    //y = height - 50; 
    //ySpeed = ySpeed * -0.9;
  } else if (y<25) {
    ySpeed=-ySpeed;
  }
}

/*void mouseClicked() { 
 xSpeed = random(-10, 10);      
 ySpeed -=10;
 }*/
