

//this object defines a circle which has a position and a radius
class Circle{
  float x_, y_;
  float radius_;

  //when you create a circle send in the position and radius
  Circle(float x,float y, float r){
    x_=x;
    y_=y;
    radius_=r;
  }
  //to each time you want to draw a circle, simply call the ellipse
  //function
  void draw(){
    ellipse(x_,y_,radius_,radius_);
  }
}

//an array of Circle objects
Circle [] circleList=new Circle[50];
//keep count of number of circles, since our array is set to 50, do not allow
//more than 50 circles
int numCircles=0;

void setup(){
  size(500,500);
}

//done once every frame.
void draw(){
  //always wipe the background
  background(0);
  
  //draw all the circles
  for(int i=0;i<numCircles;i++){
    circleList[i].draw();
  }

}
/*
  Function gets called once, as soon as the
  mouse button is pressed.
*/
void mousePressed(){
    if(numCircles<50){
      //if we have less than 50 circles make a new one and add it to the list
      circleList[numCircles]=new Circle(mouseX,mouseY,random(50,100));
      numCircles++;
    }
}
