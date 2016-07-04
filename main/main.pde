import processing.serial.*;

TextInput inputPort= new TextInput("Input Text", "Input Text Label");
//Font
PFont font;

void setup(){
  size(800, 200);
  background(255);
  //Loading Font
  font = createFont("fonts/Roboto-Regular.ttf", 12);
  textFont(font);
}

void draw(){
  Button("Button A", 10, 10);
}