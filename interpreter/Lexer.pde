class Lexer{
  ArrayList<Token>tokens = new ArrayList();
  void lexer(String comand){
    String s[] = split(comand,' ');
    for(int i=0;i<s.length;i++){
      //println(s[i]);
      Token a = new Token(s[i]);
      tokens.add(a);
    }
  }
  void intr(){
    float b;
    for(int i=0;i<tokens.size();i++){
      switch(tokens.get(i).text){
        case "forward":
          b=calculate(i);
          turtle.forward(b);
        break;
        case "back":
          b=calculate(i);
          turtle.back(b);
          break;
        case "right":
          b=calculate(i);
          turtle.right(b/57.28);
          break;
        case "left":
          b=calculate(i);
          turtle.left(b/57.28);
          break;
        case "penup":
          turtle.pen = false;
          break;
        case "pendown":
          turtle.pen = true;
          break;
        case "showturtle":
          turtle.show = true;
          break;
        case "hideturtle":
          turtle.show = false;
          break;
        case "repeat":
          b=calculate(i);
          b--;
          while(b>0){
            int j = i+3;
            char[] a = tokens.get(j).text.toCharArray();
            while(a[0]!=']'){
              j++;
              a=tokens.get(j).text.toCharArray();
              intr(j-1);
            }
            b--;
          }
          break;
      }
    }
  }
  void intr(int i){
    float b;
    println(tokens.get(i).text);
    switch(tokens.get(i).text){
        case "forward":
          b=calculate(i);
          turtle.forward(b);
        break;
        case "back":
          b=calculate(i);
          turtle.back(b);
          break;
        case "right":
          b=calculate(i);
          turtle.right(b/57.28);
          break;
        case "left":
          b=calculate(i);
          turtle.left(b/57.28);
          break;
        case "penup":
          turtle.pen = false;
          break;
        case "pendown":
          turtle.pen = true;
          break;
        case "showturtle":
          turtle.show = true;
          break;
        case "hideturtle":
          turtle.show = false;
          break;
        case "repeat":
          b=calculate(i);
          b--;
          while(b>0){
            int j = i+3;
            char[] a = tokens.get(j).text.toCharArray();
            while(a[0]!=']'){
              j++;
              a=tokens.get(j).text.toCharArray();
              intr(j-1);
            }
            b--;
          }
          break;
      }
  }
  
  float calculate(int index){
    float b = 0;
    String a = tokens.get(index+1).text;
    b=float(a);
    if(index+3>tokens.size()){
      return b;
    }
    switch(tokens.get(index+2).text){
      case "+":
        a = tokens.get(index+3).text;
        b+=float(a);
      break;
      case "-":
        a = tokens.get(index+3).text;
        b-=float(a);
      break;
      case "*":
        a = tokens.get(index+3).text;
        b*=float(a);
      break;
      case "/":
        a = tokens.get(index+3).text;
        b/=float(a);
      break;
      
    }
    return b;
  }
}
