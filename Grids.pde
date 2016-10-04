class Grids {
  int grid[][];
  int size;

  Grids() {
    size = 5;
    grid = new int[size][size]; 

    int rand1 = (int)random(4);
    int rand2 = (int)random(4);
    grid[rand1][rand2] = 2;
     
    rand1 = (int)random(4);
    rand2 = (int)random(4);
    do{
      rand1 = (int)random(4);
      rand2 = (int)random(4);
      grid[rand1][rand2] = 2;
    }while(grid[rand1][rand2] != 2);
  }

  void drawGrid() {
    int i, j, posX, posY, halfX, halfY, tempX, tempY;
    tempX = (width/size*2);
    tempY = (height/size);
    halfX = (width/size)/2; 
    halfY = (height/size)/2;

    for (i=0; i<size; i++) {
      posX = (width/size)*(i+1);
      posY = (height/size)*(i+1);
      line(posX, 0, posX, height);
      line(0, posY, width, posY);

      tempY = (height/size)*(i+1);
      for (j=0; j<size; j++) {
        tempX = (width/size) * (j+1);
        if(grid[i][j] != 0)
          text(grid[i][j], tempX-halfX, tempY-halfY);
      }
    }
  }
  
  void addNewNumber(){
    boolean placed = false;
    int i = (int) random(size), j = (int) random(size);
    
    do{
      if(grid[i][j] == 0){
        grid[i][j] = 2; 
        placed = true;
      }else{
        i = (int) random(size);
        j = (int) random(size);
      }
    }while(placed != true);
  }
  
  
}