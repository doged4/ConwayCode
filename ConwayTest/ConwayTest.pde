Square test = new Square(0,0);
ArrayList<Square> MainSquares = new ArrayList<Square>();

void setup(){
  size(600,600);
  System.out.println("INIT");
  
  for(float i = 0; i < 600; i+=10){
    MainSquares.add(new Square(i,i));
  } 


}

void draw(){
  background(0,0,0);

  for(Square square: MainSquares){
    square.display();
    
  }




}