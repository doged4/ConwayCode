Square test = new Square(0,0);
MainDisplayer main = new MainDisplayer();
ArrayList<Square> MainSquares = new ArrayList<Square>(); 
//ArrayList<Integer> Locations = new  ArrayList<Integer>();
ArrayList<Detectors> Locations = new  ArrayList<Detectors>();
ArrayList<Square> visibleSquares = new ArrayList<Square>(); 
final int scale = 100; 





void setup(){
  size(600,600);
  System.out.println("INIT");
  main.firstDo();
  main.display();
   //for(float i = 0; i < 60; i++){
   //     for(float j = 0; j < 60; j++){
   //       visibleSquares.add(new Square(i,j));
   //     }
   // }

  
     for(float i = 0; i < scale; i++){
        for(float j = 0; j < scale; j++){
          visibleSquares.add(new Square(i,j));
        }
    }

  
  
 // for(float i = 0; i < 600; i+=10){
   // MainSquares.add(new Square(i,i));
 // } 

  

/*
For a space that is 'populated':
Each cell with one or no neighbors dies, as if by solitude.
Each cell with four or more neighbors dies, as if by overpopulation.
Each cell with two or three neighbors survives.
For a space that is 'empty' or 'unpopulated'
Each cell with three neighbors becomes populated.
*/


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


  //if (squareIn((mouseX -(mouseX % (600/scale)))*scale/600,
                   //(mouseY -(mouseY % (600/scale)))*scale/600)){
                     
    main.addSquare((mouseX -(mouseX % (600/scale)))*scale/600,
                   (mouseY -(mouseY % (600/scale)))*scale/600);
  //}
  println("broken");
  println(str(mouseX -(mouseX % (600/scale))) + ", " + str(mouseY -(mouseY % (600/scale))));
  
}
void keyPressed(){
    main.update();
    if (key == 'b'){
      main.firstDo();
     }
     println(squareIn(1,1));
}