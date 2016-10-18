class Score{
  int score;
  
  Score(){
    score = 0;
  }
  
  void drawScore(){
    textAlign(LEFT,TOP);
    text("Score: " + score,width * 0.1f, height * 0.05f);
    textAlign(CENTER,CENTER);
  }
}