class Square{
  float x,y;
  
  Square(float _x, float _y){
    this.x = _x;
    this.y = _y;
  }
  
  protected void display(){
    //rect(this.x,this.y,10,10);
      rect(this.x*10,this.y*10,10,10);
}
  
  protected void update(){
    
  }

}