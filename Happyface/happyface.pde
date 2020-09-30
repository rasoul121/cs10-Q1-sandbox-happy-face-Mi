//Global Variables
int reset;
int faceX, faceY, faceDiameter;
int leftEyeX, leftEyeY, leftEyeDiameter;
int rightEyeX, rightEyeY, rightEyeDiameter;
int noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
color red = #FF0303;
color measlesColor = red;
float measlesX, measlesY, measlesDiameter;

void setup() {
  size (400, 300);
  //fullScreen();
  println("Screen Width is", displayWidth, "Screen Height is", displayHeight);
  //
  population();
  //
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);
  ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset);
  
  fill(measlesColor);
  ellipse(measlesX, measlesY, measlesDiameter);
  fill(reset);
}//End setup

void draw() {
  
}//End draw

void keyPressed() {
  //Quit Keyboard Button
  if(key == 'q' || key == 'Q') { exit(); }//End IF
}//End keypressed

void mousePressed() {}//End mousePressed
