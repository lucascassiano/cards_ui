import processing.serial.*;

TextInput input= new TextInput(" ");
TextInput input2= new TextInput("Input Text 2");
TextInput input3= new TextInput("Input Text 3", "Input Text Label");
//Font
PFont font;
PImage img;

void setup(){
  size(800, 200);
  background(255);
  //Loading Font
  font = createFont("fonts/Roboto-Regular.ttf", 12);
  textFont(font);
  img = loadImage("http://www.iconsplace.com/icons/preview/white/github-256.png");
}
boolean a = false;
boolean b = true;


void draw(){
  background(c_dark);
ex5();
}

void ex5(){

}

void ex4(){
  a = Toggle(a, 20, 20);
  Toggle(!a, 100, 20);
  b = Toggle(b, 200, 20,100,50);
}
void ex3(){
  String text = input.draw(20,50,100,30);
  input2.draw(130,50,100,30);
  input3.draw(250,50,100,30);
  println(text);
  println(input2.getText());
}
void ex2(){
  if(ImageButton(img,10,20,100,100))
    print("clicked");
  
  ImageButton(img,120,20,100,100,15);
  
  ImageButton(img,230,20,100,100,true);
} 
void ex1(){
  if(Button("Button A", 10, 100)){
    println("clicked");
  }
  Button("Button B", 150, 100,"Tooltip");
  Button("Button C", 290, 100,200,30,"Tooltip");
}