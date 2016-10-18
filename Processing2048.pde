void setup(){
  size(600,600); 
  fill(0);
  stroke(0);
  strokeWeight(10);
  background(255);
  textAlign(CENTER,CENTER);
  textSize(20);
  mainFrame = new Controller();
}

Controller mainFrame;

void draw(){
  background(255);
  mainFrame.colourPicker();
  mainFrame.drawNumbers();
  mainFrame.drawGrid();
  mainFrame.drawScore();
}

void keyPressed(){
  mainFrame.move(key);
}