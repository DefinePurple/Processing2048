void setup(){
  size(500,500); 
  fill(0);
  stroke(0);
  background(255);
  textAlign(CENTER,CENTER);
  textSize(20);
  mainFrame = new Controller();
}

Controller mainFrame;

void draw(){
  background(255);
  mainFrame.draw();
}

void keyPressed(){
  mainFrame.move(key);
}