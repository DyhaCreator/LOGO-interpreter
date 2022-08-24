Turtle turtle;
Lexer lexer = new Lexer();
String[] code;
void setup(){
  size(500,500);
  fill(255,0,0);
  stroke(255);
  turtle = new Turtle(width/2,height/2);
  code = loadStrings("code.logo");
  for(int i=0;i<code.length;i++){
    lexer.lexer(code[i]);
  }
  /*turtle.forward(100);
  turtle.right(90);
  turtle.back(100);*/
}
void draw(){
  background(0);
  lexer.intr();
  turtle.show();
  println(turtle.pos.x);
  println(turtle.pos.y);
  noLoop();
}
