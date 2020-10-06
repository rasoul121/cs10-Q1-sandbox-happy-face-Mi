//Global Variables
int reset;
int faceX, faceY, faceDiameter;
int leftEyeX, leftEyeY, leftEyeDiameter;
int rightEyeX, rightEyeY, rightEyeDiameter;
int noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
color red = #FF0303;
color measlesColor = red;
color white = 255;
color colorReset = white;
float measlesX, measlesY, measlesDiameter;
int buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, blue, black;
String quit = "Quit";
PFont titleFont;
color quitButtonwhite = #F2EEEB;
color quitButtonColor = quitButtonwhite;
float triangleX1, triangleY1,triangleX2, triangleY2, triangleX3, triangleY3;
int coverX, coverY, coverDiameter;
void setup() {
  size (800, 500);
  //fullScreen();
  println("Screen Width is", displayWidth, "Screen Height is", displayHeight);
 // println("start of console");
//printArray(fontList);
  //
  population();
  //
  //faceDraw();
  background(0);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  ellipse(coverX, coverY, coverDiameter, coverDiameter);
  strokeWeight(reset);
}//End setup

void draw() {
  
  if (mouseX>buttonX && mouseX<width && mouseY>buttonY && mouseY<buttonHeight) { //Button Hoverover
    buttonColour = blue; //Hoverover
  } else {
    buttonColour = black;
  }// End IF
  fill(buttonColour); //black all the time, green with Hoverover
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(quitButtonwhite);
textAlign(CENTER, CENTER); //Aligns the X&Y
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
 textFont(titleFont, width*1/35);
  text(quit, buttonX, buttonY, buttonWidth, buttonHeight);
  fill(403); //Reset
  //
  measlesX = random(width*1/2-height*1/2, width*1/2+height*1/2);
  measlesY = random(height);
  measlesDiameter = random(height*1/70, height*1/40);
  fill(measlesColor);
  //Parameters are randomly set ;)
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  fill(colorReset);
  ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);
  ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset);
  triangle(triangleX1, triangleY1,triangleX2, triangleY2, triangleX3, triangleY3);
}//End draw

void keyPressed() {
  //Quit Keyboard Button
  if (key == 'q' || key == 'Q') { 
    exit();
  }//End IF
}//End keypressed

void mousePressed() {
  if ( mouseX>buttonX && mouseX<width && mouseY>buttonY && mouseY<buttonHeight ) {
    exit();
  }//End IF, using mouseX & mouseY
}//End mousePressed
