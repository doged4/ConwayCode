class Square {
  float x,y;
  
  Square(float _x, float _y){
    this.x = _x;
    this.y = _y;
  }
  
  protected void display(){
     rect(600*this.x/scale, 600*this.y/scale, 600/scale, 600/scale);
  }
}