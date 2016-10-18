class Maths {
  int i, a, j, len, row, col, temp;

  Maths(Grids grids) {
    len = grids.grid.length;
  }

  //All left movements and maths
  void combineLeft(Grids grids, Score scores) {
    for (i=0; i<len; i++) {
      for (j=0; j<len-1; j++) {
        if (grids.grid[i][j+1] == grids.grid[i][j]) {
          grids.grid[i][j] += grids.grid[i][j+1];
          grids.grid[i][j+1] = 0;
          scores.score += grids.grid[i][j];
        }
      }//end for j
    }//end for i
  }//end combineLeft

  void moveLeft(Grids grids) {
    for (i=0; i<len; i++) {
      for (j=1; j<len; j++) {
        if (grids.grid[i][j-1] == 0) {
          grids.grid[i][j-1] = grids.grid[i][j];
          grids.grid[i][j] = 0;
        }
      }//end for j
    }//end for i
  }//end moveLeft


  //All right movements and maths
  void combineRight(Grids grids, Score scores) {
    for (i=len-1; i>=0; i--) {
      for (j=len-1; j>0; j--) {
        if (grids.grid[i][j-1] == grids.grid[i][j]) {
          grids.grid[i][j] += grids.grid[i][j-1];
          grids.grid[i][j-1] = 0;
          scores.score += grids.grid[i][j];
        }
      }//end for j
    }//end for i
  }//end combineRight

  void moveRight(Grids grids) {
    for (i=0; i<len; i++) {
      for (j=0; j<len-1; j++) {
        if (grids.grid[i][j+1] == 0) {
          grids.grid[i][j+1] = grids.grid[i][j];
          grids.grid[i][j] = 0;
        }
      }//end for j
    }//end for i
  }//end moveRight


  //All down movements & maths
  void combineDown(Grids grids, Score scores) {
    for (i=len-1; i>0; i--) {
      for (j=len-1; j>=0; j--) {
        if (grids.grid[i-1][j] == grids.grid[i][j]) {
          grids.grid[i][j] += grids.grid[i-1][j];
          grids.grid[i-1][j] = 0;
          scores.score += grids.grid[i][j];
        }
      }//end for j
    }//end for i
  }//end combineDown

  void moveDown(Grids grids) {
    for (i=0; i<len-1; i++) {
      for (j=0; j<len; j++) {
        if (grids.grid[i+1][j] == 0) {
          grids.grid[i+1][j] = grids.grid[i][j];
          grids.grid[i][j] = 0;
        }
      }//end for j
    }//end for i
  }//end moveDown


  //All up movements & maths
  void combineUP(Grids grids, Score scores) {
    for (i=0; i<len-1; i++) {
      for (j=0; j<len; j++) {
        if (grids.grid[i+1][j] == grids.grid[i][j]) {
          grids.grid[i][j] += grids.grid[i+1][j];
          grids.grid[i+1][j] = 0;
          scores.score += grids.grid[i][j];
        }
      }//end for j
    }//end for i
  }//end combineUP

  void moveUP(Grids grids) {
    for (i=1; i<len; i++) {
      for (j=0; j<len; j++) {
        if (grids.grid[i-1][j] == 0) {
          grids.grid[i-1][j] = grids.grid[i][j];
          grids.grid[i][j] = 0;
        }
      }//end for j
    }//end for i
  }//end moveUP
}