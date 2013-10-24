size(300,300);
//background(0,0,0);
//draw a yellow circle
//start by setting the inside colour to yellow
//rgb colors
fill(255,215,0);
//ellipse(x,y,width,height);
ellipse(150,150,100,100);
 
//put in eyes
fill(0,0,0);
ellipse(130,140,15,20);
 
//put in eyes
fill(0,0,0);
ellipse(170,140,15,20);
 
//put in the smile
noFill();
//arc is like a partial ellipse, 
//you specify starting and ending angles
arc(150,150,75,75,0,PI);