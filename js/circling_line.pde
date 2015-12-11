// Created by Nearchos Paspallis [nearchos@aspectsense.com] on Aug 7th, 2013

int x_center; // canvas center x
int y_center; // canvas center y
int radius;   // radius of circle
float angle = 0; // angle (will vary)
color red;


void setup()
{ 
  smooth(); 
  size(200,200); // init canvas size
  x_center = width/2; 
  y_center = height/2; 
  radius = width/2;
  red = color(255,0,0);
  transparent = color(0,0,0,0); 
  frameRate(10); 

  stroke(red);
} 

void draw()
{
  background(0,0,0,0); // clear screen to draw new clip

  p1_x = x_center; // p1 is fixed to center
  p1_y = y_center;

  p2_x = x_center + radius * cos(angle); // p2 moves on a circle
  p2_y = y_center + radius * sin(angle);

  line(p1_x, p1_y, p2_x, p2_y); // draw red line from p1 to p2

  angle = angle + 0.05; // progress of animation
}
