//Global Variables
int buttonX, buttonY, buttonWidth, buttonHeight;
color buttoncolour,green, black;

void setup() {
  size(400, 300);
  //Population
  buttonX = width*1/4;
  buttonY = height*1/4;
  buttonWidth = width*1/2;
  buttonHeight = height*1/2;
  green =#50F20C;
  black =#0E0F15;
}//End setup

void draw() {

  if (mouseX>width*1/4 && mouseX<width*3/4 && mouseY>height*1/4 && mouseY<height*3/4) { //Button Hoverover
    buttoncolour = green; //hoverover
  } else {
    buttoncolour = black;
  }// End IF
  fill(buttoncolour);//Purple all the time, Yellow with Hoverover
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
}//End draw

void keyPressed() {
  //Quit Keyboard Button
  if (key == 'q' || key == 'Q') { 
    exit();
  }//End IF
}//End keypressed

void mousePressed() {
  if ( mouseX>width*1/4 && mouseX<width*3/4 && mouseY>height*1/4 && mouseY<height*3/4 ) {
    exit();
  }//End IF, using mouseX & mouseY
}//End mousePressed
