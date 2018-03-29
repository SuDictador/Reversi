class Tablero{

  int[][] grid;
  int dimension =0;
  FichaGame ficha;
  int isPair =0;
  
  Tablero(int dimension){
    this.dimension = dimension;
    this.grid = new int[dimension][dimension];
    this.isPair = dimensionPair();
  }
  public void drawGrid(){
    int square =  (height/this.dimension);   
    int a,b;
    if(this.isPair==0){
      a = this.dimension/2;
      b = a-1;
    }else{
      a = (int)(this.dimension/2);
      b = (int)(Math.ceil(this.dimension/2));
    }

    grid[a][a]=1;
    grid[b][b]=-1;
    grid[b][a]=1;
    grid[a][b]=-1;
    
    FichaGame ficha1 = new FichaGame(-1,a*square+(square/2),a*square+(square/2),square-2);
    FichaGame ficha2 = new FichaGame(-1,b*square+(square/2),b*square+(square/2),square-2);
    FichaGame ficha3 = new FichaGame(1,b*square+(square/2),a*square+(square/2),square-2);
    FichaGame ficha4 = new FichaGame(1,a*square+(square/2),b*square+(square/2),square-2);
    
    ficha1.drawFichaGame();
    ficha2.drawFichaGame();
    ficha3.drawFichaGame();
    ficha4.drawFichaGame();
    for(int i=0; i< this.dimension+1;i++){
       line(square*i,0,square*i,height);
       line(0,square*i,height,square*i);      
    }
    
  } 
  
  private int dimensionPair(){
     if((this.dimension%2)==0)
         return 0;
      return 1;
  }
  
  public void drawInitialGamePiece(){
   
  }

}

Tablero juego = new Tablero(4);
void setup(){
background(110, 196, 176);
size(512, 512);
}

void draw(){
  juego.drawGrid();
}



void mouseClicked() {
  //println(mouseX/(width/tablero.dimension), mouseY/(height/tablero.dimension));
  int i = mouseX/(width/juego.dimension); 
  int j =  mouseY/(height/juego.dimension);
  /* Si está disponible esa posición. */
  if (tablero.jugadasPermitidas(i,j,tablero.getTurno())){
    tablero.mundo[i][j] = (tablero.getTurno()) ? -1 : 1;
    /* Cambia de turno. */
    tablero.setTurno(!tablero.getTurno()); 
  } 
}
