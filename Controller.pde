class Controller {
  Grids grids;
  Maths maths;
  Colours colours;
  
  Controller() {
    grids = new Grids();
    maths = new Maths(grids);
    colours = new Colours();
    
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
  
  void move(char choice) {
    switch(choice) {
    case 'w':
      for (int i=0; i<grids.size; i++)
        maths.moveUP(grids);
        
      maths.combineUP(grids);
      
      for (int i=0; i<grids.size; i++)
        maths.moveUP(grids);
      break;

    case 's':
      for (int i=0; i<grids.size; i++)
        maths.moveDown(grids);
        
      maths.combineDown(grids);
      
      for (int i=0; i<grids.size; i++)
        maths.moveDown(grids);
      break;

    case 'a':
      for (int i=0; i<grids.size; i++)
        maths.moveLeft(grids);
        
      maths.combineLeft(grids);
      
      for (int i=0; i<grids.size; i++)
        maths.moveLeft(grids);
      break;

    case 'd':
      for (int i=0; i<grids.size; i++)
        maths.moveRight(grids);
      maths.combineRight(grids);
      
      for (int i=0; i<grids.size; i++)
        maths.moveRight(grids);
      break;
    }
    if(choice == 'w' || choice == 'a' || choice == 's' || choice == 'd') 
      grids.addNewNumber();
  }
}