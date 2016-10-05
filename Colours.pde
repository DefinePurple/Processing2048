class Colours{
  
  void colourPicker(Grids grids){
    float sizeX, sizeY;
    float x = 0, y = 0; 
    int len = grids.grid.length;
    sizeX = width/len;
    sizeY = height/len;
     
    for(int i=0;i<len;i++){
      for(int j=0;j<len;j++){
        if(grids.grid[i][j] != 0){
          fill(120,90,211);
          rect(x,y,sizeX,sizeY);
        }
        x += sizeX;
      }
      x = 0;
      y+= sizeY;
    }
    fill(0);
  }
}