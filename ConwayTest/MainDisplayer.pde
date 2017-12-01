class MainDisplayer {
  
  MainDisplayer(){
    
    
    
  }
  void update(){
  //   for(Square square: MainSquares){
  //    square.update();
  //  }
  
    for(Detectors detector: Locations){
        detector.update();
     }
 
    MainSquares.removeAll(MainSquares);
    
     for(Detectors detector: Locations){
        detector.next();
     }
    
  }
  
  void display(){
    for(Square square: MainSquares){
      square.display();
    }
  }
  void glider(float _x, float _y){
  /*  MainSquares.add(new Square(_x+10,_y));
    MainSquares.add(new Square(_x+20,_y+10));
    MainSquares.add(new Square(_x,_y+20));
    MainSquares.add(new Square(_x+10,_y+20));
    MainSquares.add(new Square(_x+20,_y+20));*/
    
    MainSquares.add(new Square(_x+1,_y));
    MainSquares.add(new Square(_x+2,_y+1));
    MainSquares.add(new Square(_x,_y+2));
    MainSquares.add(new Square(_x+1,_y+2));
    MainSquares.add(new Square(_x+2,_y+2));
  }

void firstDo(){
    //for(float i = 0; i < 600; i+=10){
    //  MainSquares.add(new Square(i,i));
    //}
    for(float i = 0; i < 60; i++){
      MainSquares.add(new Square(i,i));
    }
    /* for(float i = 0; i < 60; i++){
        for(float j = 0; j < 60; j++){
          MainSquares.add(new Square(i,j));
        }
    }*/
    
    
     glider(6,1);
  }


}