Die bruh = new Die(100,100);
void setup(){
  size(1000, 850);
  noLoop();
}

void draw(){
  background(255,0,255);
  bruh.show();
}

void mousePressed(){
  redraw();
}

class Die {
  int xp;
  int yp;
  
  Die(int x, int y) {
    xp = x;
    yp = y;
  }
  
  void roll(){
    
  }
  
  void show(){
    int total = 0;
    for(int j = 0; j < 8; j++){
      for(int i = 0; i < 12; i++){
        fill(255);
        rect(xp * i + 20, yp * j + 10, 60, 60, 20);
        fill(0);
        int rand = (int)random(1,7);
        if(rand == 1){
          //1
          ellipse(xp*i + 50, yp*j + 40, 10, 10);
          total++;
        }else if(rand == 2){  
          //2
          ellipse(xp*i + 35, yp*j + 25, 10,10);
          ellipse(xp*i + 65, yp*j + 55, 10,10);
          total+=2;
        }else if(rand == 3){
          //3
          ellipse(xp*i + 50, yp*j + 40, 10, 10);
          ellipse(xp*i + 35, yp*j + 25, 10,10);
          ellipse(xp*i + 65, yp*j + 55, 10,10);
          total+=3;
        }else if(rand == 4){
          //4
          ellipse(xp*i + 35, yp*j + 55, 10,10);
          ellipse(xp*i + 65, yp*j + 25, 10,10);
          ellipse(xp*i + 35, yp*j + 25, 10,10);
          ellipse(xp*i + 65, yp*j + 55, 10,10);
          total+=4;
        }else if(rand == 5){
          //5
          ellipse(xp*i + 35, yp*j + 55, 10,10);
          ellipse(xp*i + 65, yp*j + 25, 10,10);
          ellipse(xp*i + 35, yp*j + 25, 10,10);
          ellipse(xp*i + 65, yp*j + 55, 10,10);
          ellipse(xp*i + 50, yp*j + 40, 10, 10);
          total+=5;
        }else if(rand == 6)  {
          //6
          ellipse(xp*i + 35, yp*j + 55, 10,10);
          ellipse(xp*i + 65, yp*j + 25, 10,10);
          ellipse(xp*i + 35, yp*j + 25, 10,10);
          ellipse(xp*i + 65, yp*j + 55, 10,10);
          ellipse(xp*i + 35, yp*j + 40, 10, 10);
          ellipse(xp*i + 65, yp*j + 40, 10, 10);
          total+=6;
        }  
      }  
    }
  textSize(50);
  textAlign(CENTER);
  fill(0);
  text("Total: " + total,width/2,height-20);
  }
}
