Square test = new Square(0,0);
MainDisplayer main = new MainDisplayer();
ArrayList<Square> MainSquares = new ArrayList<Square>(); 
ArrayList<Detectors> Locations = new  ArrayList<Detectors>();
ArrayList<Square> visibleSquares = new ArrayList<Square>(); 
final int scale = 60; 

void setup(){
  size(600,600);
  System.out.println("INIT");
  main.firstDo();
  main.display();
  for(float i = 0; i < scale; i++){
    for(float j = 0; j < scale; j++){
      visibleSquares.add(new Square(i,j));
    }
  }
}

void draw(){
  background(0,0,0);
  fill(0,55,55);
  for(Square square: visibleSquares){
    square.display();
  }
  fill(255,255,255);
  main.display();
}

boolean squareIn(float x, float y){
  for(Square square: MainSquares){
    if((square.x == x)
     && (square.y == y)){
      return true;
    }
  }
  return false;
}

void mouseClicked(){      
  main.addSquare((mouseX -(mouseX % (600/scale)))*scale/600,
                 (mouseY -(mouseY % (600/scale)))*scale/600);
}

void keyPressed(){
  main.update();
  if (key == 'b'){
    main.firstDo();
  }
}