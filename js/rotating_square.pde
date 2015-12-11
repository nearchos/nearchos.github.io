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

  p1_x = x_center + radius * cos(angle); // p1 moves on a circle
  p1_y = y_center + radius * sin(angle);

  p2_x = x_center + radius * cos(angle + Math.PI/2); // p2 is PI/2 'behind'
  p2_y = y_center + radius * sin(angle + Math.PI/2);

  p3_x = x_center + radius * cos(angle + Math.PI); // p3 is PI 'behind'
  p3_y = y_center + radius * sin(angle + Math.PI);

  p4_x = x_center + radius * cos(angle + 3*Math.PI/2); // p4 is 3/2 PI 'behind'
  p4_y = y_center + radius * sin(angle + 3*Math.PI/2);

  line(p1_x, p1_y, p2_x, p2_y); // draw red line from p1 to p2
  line(p2_x, p2_y, p3_x, p3_y); // draw red line from p2 to p3
  line(p3_x, p3_y, p4_x, p4_y); // draw red line from p3 to p4
  line(p4_x, p4_y, p1_x, p1_y); // draw red line from p4 back to p1

  angle = angle + 0.05; // progress of animation
}
