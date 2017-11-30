class Detectors {
  
  float x,y;
  int surrounding;
  boolean inside = false;
  
 Detectors(float _x, float _y){
   this.x = _x;
   this.y = _y;
   this.surrounding = 0;
 
 }
 
 void update(){
   this.surrounding = 0;
    for(Square square: MainSquares){
       if ((square.x > this.x - 2)&&(square.x < this.x + 2)&&
          (square.y > this.y - 2)&&(square.y < this.y + 2)){
          if((square.x == this.x)
              && (square.y == this.y)){
                inside = true;
              } else {
                this.surrounding += 1;
              }
          }
    }
 /*   
   if (surrounding == 3){
     MainSquares.add(new Square(this.x,this.y));
   }
   */
 }
}