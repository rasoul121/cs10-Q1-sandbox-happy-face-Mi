void population() {
  faceX = width/2;
  faceY = height/2;
  faceDiameter = height;
  leftEyeX = width*3/8;
  leftEyeY = height*1/4;
  leftEyeDiameter = height/7;
  rightEyeX = width*5/8;
  rightEyeY = leftEyeY;
  rightEyeDiameter = leftEyeDiameter;
  noseX1 = width/2;
  noseY1 = height*2/5;
  noseX2 = width*7/16;
  noseY2 = height*6/10;
  noseX3 = width*9/16;
  noseY3 = noseY2;
  mouthX1 = leftEyeX;
  mouthY1 = height*3/4;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  mouthThick = 15;
  triangleX1 = width/2;
  triangleY1 =height*4/10;
  triangleX2 =width*7/15;
  triangleY2 =height*8/5;
  triangleX3 =width*6/8;
  triangleY3 =triangleY2;
  reset = 1;
  buttonX = width*15/16;
  buttonY = height*0/14;
  buttonWidth = width*1/16;
  buttonHeight = height*5/14;
  blue =#0846FC;
  black =#0E0F15;
  titleFont = createFont ("Yu Gothic UI light", 55); //font size 55
}//End population
