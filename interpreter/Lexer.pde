class Lexer{
  ArrayList<Token>tokens = new ArrayList();
  void lexer(String comand){
    String s[] = split(comand,' ');
    for(int i=0;i<s.length;i++){
      println(s[i]);
      Token a = new Token(s[i]);
      tokens.add(a);
    }
  }
  void intr(){
    String a;
    for(int i=0;i<tokens.size();i++){
      switch(tokens.get(i).text){
        case "forward":
          a = tokens.get(i+1).text;
          turtle.forward(float(a));
          break;
        case "back":
          a = tokens.get(i+1).text;
          turtle.back(float(a));
          break;
        case "right":
          a = tokens.get(i+1).text;
          turtle.right(float(a)/57.28);
          break;
        case "left":
          a = tokens.get(i+1).text;
          turtle.left(float(a)/57.28);
          break;
      }
    }
  }
}
