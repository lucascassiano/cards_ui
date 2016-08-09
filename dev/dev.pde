import processing.serial.*;

TextInput input= new TextInput(" ");
TextInput input2= new TextInput("Input Text 2");
TextInput input3= new TextInput("Input Text 3", "Input Text Label");
//Font
PFont font;
PImage img;

void setup() {
  size(800, 200);
  background(255);
  //Loading Font
  font = createFont("fonts/Roboto-Regular.ttf", 12);
  textFont(font);
  img = loadImage("http://www.iconsplace.com/icons/preview/white/github-256.png");
  //uiLight();
}
boolean a = false;
boolean b = true;

boolean ok = true;
PImage img2;
DraggableObject t = new DraggableObject(10, 10, 100, 100);
DragDropCard ddc = new DragDropCard();
DropDown drop_test = new DropDown();


void draw() {
  background(c_dark);

  //shadow
  //  drawShadow(0,5,10,10,100,100);
  //fill(255);
  //ex5();
  // rect(10,10,100,100);
  //ddc.BeginCard( "test", width/2 -100, 15+height/2-100, 200, 100);

  //endCard();
  
  //test dropdown
  String[] dropdown = {"Option 0", "Option 1", "Option 2"};
  //DropDown(dropdown, 10,10,100,30);
  drop_test.draw(dropdown,0,10,10,100,30);
}


//Blur
void ex5() {
  ex1();
  if (ok) {
    img2 = get();
    img2.resize(300, 0);
    img2.filter(BLUR, 5);
    ok = false;
  }
  if (img2!=null) {
    image(img2, 0, 0, width, height);
    beginCard( "Dialog Box test", width/2 -100, 15+height/2-100, 200, 100);
    //t.draggableCard();
    //Card content here
    //ImageButton(img, card_x+10, card_y+5, card_w, card_h, 15);
    endCard();
  }
}


void ex4() {
  a = Toggle(a, 20, 20);
  Toggle(!a, 100, 20);
  b = Toggle(b, 200, 20, 100, 50);
}
void ex3() {
  String text = input.draw(20, 50, 100, 30);
  input2.draw(130, 50, 100, 30);
  input3.draw(250, 50, 100, 30);
  println(text);
  println(input2.getText());
}
void ex2() {
  if (ImageButton(img, 10, 20, 100, 100))
    print("clicked");

  ImageButton(img, 120, 20, 100, 100, 15);

  ImageButton(img, 230, 20, 100, 100, true);
} 
void ex1() {
  if (Button("Button A", 10, 100)) {
    println("clicked");
  }
  Button("Button B", 150, 100, "Tooltip");
  Button("Button C", 290, 100, 200, 30, "Tooltip");
}