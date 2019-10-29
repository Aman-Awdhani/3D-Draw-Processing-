
float rectX ;
float rectY ;
ArrayList<Line> points = new ArrayList<Line>();
Line obj ;


void setup() {
  frameRate(2000);
  rectX = width/2 -50;
  rectY = height*.8 +30;

  size(500, 500);
  background(0);
  reset();
}

void draw() {

  stroke(255);
  
  //create  lines ovjects
  if (mousePressed == true) {
    if (mouseX >rectX && mouseX < rectX+100 && mouseY > rectY && mouseY < rectY+30)return;
    points.add(obj = new Line());
    
  }
}

//delete stored lines
void DeletePoints() {

  for (int i=points.size()-1; i>=0; i--) {
    print(points.size() +" " );    

    points.remove(i);
  }  
  background(0);
  reset();
}

//click on reset button
void mousePressed() {

  if (mouseX >rectX && mouseX < rectX+100 && mouseY > rectY && mouseY < rectY+30) {

    DeletePoints();
  }
}

//make reset button
void reset() {

  stroke(255);
  noFill();
  rect( rectX, rectY, 100, 30);
  stroke(255,0,0);
  textSize(35);
  text("reset" , rectX+10 ,rectY +25);
}
