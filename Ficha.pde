class FichaGame{

  int col =0;
  int positionX =0;
  int positionY =0;
  int size =0;
   
  public FichaGame(int col,int positionX,int positionY,int size){
    this.col = col;
    this.positionX = positionX;
    this.positionY = positionY;
    this.size = size;
  }
  
  public void drawFichaGame(){
    if(this.col==1){
     fill(255); 
    }else{
     fill(0); 
    }
    ellipse(this.positionX,this.positionY,this.size,this.size);
    
  }

}
