class Controller {
  Grids grids;
  Maths maths;

  Controller() {
    grids = new Grids();
    maths = new Maths(grids);

    grids.drawGrid();
  }

  void draw() {
    grids.drawGrid();
  }

  void move(char choice) {
    char previousChoice = '0';
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