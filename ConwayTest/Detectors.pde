class Detectors {
  float x,y;
  int surrounding;
  boolean inside = false;
  
  Detectors(float _x, float _y){
    this.x = _x;
    this.y = _y;
    this.surrounding = 0;
  }
 
  int betterMod(float num, float modder){
    return int(((num % modder)+ modder) % modder);
  }
 
 void update(){
   this.inside = false;
   this.surrounding = 0;
   for(Square square: MainSquares){
      if ((square.x == betterMod(this.x - 1, scale)||square.x == this.x||square.x == betterMod(this.x + 1, scale))
      &&(square.y == betterMod(this.y - 1, scale)||square.y == this.y||square.y == betterMod(this.y + 1, scale))){
        if ((square.x == this.x) && (square.y == this.y)){
          this.inside = true;
        } else{
          this.surrounding += 1;
        }
      }
    }
  }
  
  void next(){
    if ((this.surrounding == 3) || (this.surrounding == 2 && inside)){
        MainSquares.add(new Square(this.x,this.y));
    }   
  }
}