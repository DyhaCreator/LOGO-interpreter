class Turtle{
  PVector pos = new PVector(0,0,PI*1.5);
  PVector last_pos;
  Turtle(float x, float y){
    pos.x=x;
    pos.y=y;
  }
  void show(){
    circle(pos.x,pos.y,30);
  }
  void forward(float leng){
    last_pos = pos.copy();;
    pos.x=leng*cos(pos.z)+pos.x;
    pos.y=leng*sin(pos.z)+pos.y;
    line(last_pos.x,last_pos.y,pos.x,pos.y);}
  void back(float leng){
    last_pos = pos.copy();;
    pos.x=leng*sin(pos.z)+pos.x;
    pos.y=leng*cos(pos.z)+pos.y;
    line(last_pos.x,last_pos.y,pos.x,pos.y);}
  void right(float engle){pos.z+=engle;}
  void left(float engle){pos.z-=engle;}
}
