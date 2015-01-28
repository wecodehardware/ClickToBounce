float x = 200; 
float y = 300; 
float xSpeed = 4; 
float ySpeed = 5;
boolean pause=false;


void setup() { 
  size(600, 600);
  ellipseMode(CENTER);
}

void draw() {
  if (pause==false) {
    background(0);
    fill(255); 
    stroke(255);
    ellipse(x, y, 50, 50); 

    fill(255);
    stroke(0);
    rectMode(CENTER);
    rect(300, 300, 60, 60);
    if (x<350 && x>250 && y<350 && y>250) {
      fill(255);
      println("yes");
      textSize(20);
      text("You Win!", 150, 150);
      pause=true;
      //x=300;
      //y=300;
    }

    ySpeed = ySpeed + 0.5; 
    x=x+xSpeed; 
    y=y+ySpeed; 

    if ((x>width-25) || (x<25)) {//left and right
      xSpeed = -xSpeed;
    } 
    if (y>height-25) {
      y = height - 50; 
      ySpeed = ySpeed * -0.9;
    } else if (y<25) {
      ySpeed=-ySpeed;
    }
  } else {
    if (keyPressed==true) {
      pause=false;
      x=200;
      y=200;
    }
  }
}

void mouseClicked() { 
  xSpeed = random(-10, 10);      
  ySpeed -=10;
}
