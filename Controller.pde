class Controller {
  Grids grids;
  Maths maths;
  Colours colours;
  Score score;
  int w, a, s, d;
  
  Controller() {
    grids = new Grids();
    maths = new Maths(grids);
    colours = new Colours();
    score = new Score();
    
    w = 0;
    a = 0;
    s = 0;
    d = 0;
    
    grids.drawNumbers();
  }

  void drawNumbers() {
    grids.drawNumbers();
  }

  void drawGrid(){
    grids.drawGrid();  
  }
  
  void colourPicker(){
    colours.colourPicker(grids);
  }
  
  void drawScore(){
    score.drawScore();
  }
  
  void move(char choice) {
    //Upwards movement
    if(choice == 'w'){
      w ++;
      a = 0;
      s = 0;
      d = 0;
      
      for (int i=0; i<grids.size; i++)
        maths.moveUP(grids);
        
      maths.combineUP(grids, score);
      
      for (int i=0; i<grids.size; i++)
        maths.moveUP(grids);
    }
    
    //Left Movement
    else if(choice == 'a'){
      w = 0;
      a ++;
      s = 0;
      d = 0;
      
      for (int i=0; i<grids.size; i++)
        maths.moveLeft(grids);
        
      maths.combineLeft(grids, score);
      
      for (int i=0; i<grids.size; i++)
        maths.moveLeft(grids);
    }
    
    //Downward Movement
    else if(choice == 's'){
      w = 0;
      a = 0;
      s ++;
      d = 0;
      
      for (int i=0; i<grids.size; i++)
        maths.moveDown(grids);
        
      maths.combineDown(grids, score);
      
      for (int i=0; i<grids.size; i++)
        maths.moveDown(grids);
    }
    
    //Right Movement
    else if(choice == 'd'){
      w = 0;
      a = 0;
      s = 0;
      d ++;
      
      for (int i=0; i<grids.size; i++)
        maths.moveRight(grids);
        
      maths.combineRight(grids, score);
      
      for (int i=0; i<grids.size; i++)
        maths.moveRight(grids);
    }
    
    if((choice == 'w' || choice == 'a' || choice == 's' || choice == 'd') && (w < 4 && a < 4 && s < 4 && d < 4))
      grids.addNewNumber();
  }
}