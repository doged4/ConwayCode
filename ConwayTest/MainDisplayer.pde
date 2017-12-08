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
  void addSquare(float xInp, float yInp){
      MainSquares.add(new Square(xInp,yInp));
    
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
void gliderGun(float _x, float _y){
    MainSquares.add(new Square(_x,_y+4));
    MainSquares.add(new Square(_x,_y+5));
    MainSquares.add(new Square(_x+1,_y+4));
    MainSquares.add(new Square(_x+1,_y+5));
    
//first unconnected left
    MainSquares.add(new Square(_x+10,_y+4));
    MainSquares.add(new Square(_x+10,_y+5));
    MainSquares.add(new Square(_x+10,_y+6));
    MainSquares.add(new Square(_x+11,_y+3));
    MainSquares.add(new Square(_x+11,_y+7));
    MainSquares.add(new Square(_x+12,_y+8));
    MainSquares.add(new Square(_x+12,_y+2));
    MainSquares.add(new Square(_x+13,_y+8));
    MainSquares.add(new Square(_x+13,_y+2));
    
    //theres more...
    MainSquares.add(new Square(_x+14,_y+5));
    MainSquares.add(new Square(_x+15,_y+3));
    MainSquares.add(new Square(_x+15,_y+7));
    MainSquares.add(new Square(_x+16,_y+4));
    MainSquares.add(new Square(_x+16,_y+5));
    MainSquares.add(new Square(_x+16,_y+6));
    MainSquares.add(new Square(_x+17,_y+5));

//second symmetrical
    MainSquares.add(new Square(_x+20,_y+2));
    MainSquares.add(new Square(_x+20,_y+3));
    MainSquares.add(new Square(_x+20,_y+4));
    MainSquares.add(new Square(_x+21,_y+2));
    MainSquares.add(new Square(_x+21,_y+3));
    MainSquares.add(new Square(_x+21,_y+4));

    MainSquares.add(new Square(_x+22,_y+1));
    MainSquares.add(new Square(_x+22,_y+5));


    MainSquares.add(new Square(_x+24,_y));
    MainSquares.add(new Square(_x+24,_y+1));
    
    MainSquares.add(new Square(_x+24,_y+5));
    MainSquares.add(new Square(_x+24,_y+6));


//latter square
    //MainSquares.add(new Square(_x+37,_y+2));
    //MainSquares.add(new Square(_x+37,_y+3));
    //MainSquares.add(new Square(_x+38,_y+2));
    //MainSquares.add(new Square(_x+38,_y+3));

    MainSquares.add(new Square(_x+34,_y+2));
    MainSquares.add(new Square(_x+34,_y+3));
    MainSquares.add(new Square(_x+35,_y+2));
    MainSquares.add(new Square(_x+35,_y+3));


}

void acorn(float _x,float _y){
      MainSquares.add(new Square(_x,_y+2));
      MainSquares.add(new Square(_x+1,_y));
      MainSquares.add(new Square(_x+1,_y+2));
      MainSquares.add(new Square(_x+3,_y+1));
      MainSquares.add(new Square(_x+4,_y+2));
      MainSquares.add(new Square(_x+5,_y+2));
      MainSquares.add(new Square(_x+6,_y+2));

}


void firstDo(){
    //for(float i = 0; i < 600; i+=10){
    //  MainSquares.add(new Square(i,i));
    //}
 //   for(float i = 0; i < 60; i++){
   //   MainSquares.add(new Square(i,i));
    //}
    /* for(float i = 0; i < 60; i++){
        for(float j = 0; j < 60; j++){
          MainSquares.add(new Square(i,j));
        }
    }*/
    MainSquares.removeAll(MainSquares);
    Locations.removeAll(Locations);
    //for(float i = 0; i < 60; i++){
    //    for(float j = 0; j < 60; j++){
    //      Locations.add(new Detectors(i,j));
    //    }
    //}
    for(float i = 0; i < scale; i++){
        for(float j = 0; j < scale; j++){
          Locations.add(new Detectors(i,j));
        }
    }
       acorn(30,30);

    
    
     //gliderGun(6,20);
  // for(float i = 1; i < 78; i++){
  //        MainSquares.add(new Square(i,40));
  //  }
  //}


}
}