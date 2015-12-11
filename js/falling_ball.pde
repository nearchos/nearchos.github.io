// Created by Nearchos Paspallis [nearchos@aspectsense.com] on Aug 7th, 2013

int x_center; 
int y_center;
int radius = 50;
int speed = 5;
color red;
int y;

void setup()
{ 
  smooth(); 
  size(200,300); // size of canvas
  x_center = width/2; 
  y_center = height/2; 

  red = color(255,0,0); // define red
  frameRate(10); // how many times a second draw() is called

  stroke(red); // set the 'drawing pen' color to red
  y = y_center; // initialize circle's center to canvas center
} 

void draw()
{
  background(0,0,0,0); // clear screen to draw new clip

  y = y + speed; // compute new y coordinate
  if(y > height) y = 0; // if outside canvas, move back on top

  circle(x_center, y, radius); // draw circle
}

void circle(x,y,r)
{
  ellipse(x,y,r,r);
}