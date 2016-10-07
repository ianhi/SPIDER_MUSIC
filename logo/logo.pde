boolean FILLED = true;


void setup() {
  size(600, 600);
  stroke(0);
  int wt =15;
  strokeWeight(15);
  //noBackground();
  int spiderHeight=200;
  int spiderWidth =75;
  translate(width/2, height/2);
  drawLegs(spiderHeight, spiderWidth);
  int headSize = 50;
  fill(0);
  ellipse(0, -spiderHeight/2-1.5*wt, headSize, headSize);
  if ( !FILLED) {
    noFill();
    drawBody(spiderWidth, spiderHeight);
  } else {
    fill(0);
    drawBody(spiderWidth, spiderHeight);
  }
}
void drawLegs(int spiderWidth, int spiderHeight) {
  int legLen=200;
  pushMatrix();
  rotate(-PI/2);

  for (int i =1; i<5; i+=1) {
    //rotate(PI/5.);
    float angle = PI/5*i;
    float r = spiderWidth*spiderHeight;
    r /= sqrt(spiderWidth*spiderWidth*sin(angle)*sin(angle)+spiderHeight*spiderHeight*cos(angle)*cos(angle));
    r/=2;
    line(r*cos(angle), r*sin(angle), legLen*cos(angle), legLen*sin(angle));
    line(-1* r*cos(angle), -r*sin(angle), -legLen*cos(angle), -legLen*sin(angle));
  }
  popMatrix();
}
void drawBody(int spiderWidth, int spiderHeight) {
  ellipse(0, 0, spiderWidth, spiderHeight);
}