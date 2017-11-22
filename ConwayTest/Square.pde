class Square{
  float x,y;
  
  Square(float _x, float _y){
    this.x = _x;
    this.y = _y;
  }
  
  private void display(){
    rect(this.x,this.y,10,10);
  }

}