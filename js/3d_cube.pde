// Created by Nearchos Paspallis [nearchos@aspectsense.com] on Aug 7th, 2013

// 3D Cube
int x_center; 
int y_center;
int cube_side = 250;
int distance = 2000;
int distance_to_screen = 1000;
float ellipse_width = magn_X(0) * cube_side;
float R1 = cube_side * distance_to_screen / (distance + cube_side);
float R2 = cube_side * distance_to_screen / (distance - cube_side);
float ellipse_height = R2 - R1;
float y_offset = cube_side;
float phase = 0;
color clr;

void setup()
{ 
smooth(); 
size(400,300);
//size(document.body.clientWidth, document.body.clientHeight);
x_center = width/2; 
y_center = height/2; 
clr = color(255,0,0); 
transparent = color(0,0,0,0); 
frameRate(10); 

stroke(clr);
} 

void draw()
{
background(0,0,0,0);

//float magn = distance_to_screen / (distance - distance_to_screen - cube_side * cos(phase/2));

p1_x = x_center+magn_X(phase)*sin(phase)*ellipse_width/2.0;
p1_y1 = y_center+(y_offset/2.0)-(ellipse_height/2.0)+cos(phase)*ellipse_height/2.0;
p1_y2 = y_center-(y_offset/2.0)+(ellipse_height/2.0)+cos(phase+PI)*ellipse_height/2.0;

p2_x = x_center+magn_X(phase+PI/2.0)*sin(phase+PI/2.0)*ellipse_width/2.0;
p2_y1 = y_center+(y_offset/2.0)-(ellipse_height/2.0)+cos(phase+PI/2.0)*ellipse_height/2.0;
p2_y2 = y_center-(y_offset/2.0)+(ellipse_height/2.0)+cos(phase-PI/2.0)*ellipse_height/2.0;

p3_x = x_center+magn_X(phase+PI)*sin(phase+PI)*ellipse_width/2.0;
p3_y1 = y_center+(y_offset/2.0)-(ellipse_height/2.0)+cos(phase+PI)*ellipse_height/2.0;
p3_y2 = y_center-(y_offset/2.0)+(ellipse_height/2.0)+cos(phase)*ellipse_height/2.0;

p4_x = x_center+magn_X(phase-PI/2.0)*sin(phase-PI/2.0)*ellipse_width/2.0;
p4_y1 = y_center+(y_offset/2.0)-(ellipse_height/2.0)+cos(phase-PI/2.0)*ellipse_height/2.0;
p4_y2 = y_center-(y_offset/2.0)+(ellipse_height/2.0)+cos(phase+PI/2.0)*ellipse_height/2.0;

line(p1_x,p1_y1,p1_x,p1_y2);
line(p2_x,p2_y1,p2_x,p2_y2);
line(p3_x,p3_y1,p3_x,p3_y2);
line(p4_x,p4_y1,p4_x,p4_y2);

line(p1_x,p1_y1,p2_x,p2_y1);
line(p2_x,p2_y1,p3_x,p3_y1);
line(p3_x,p3_y1,p4_x,p4_y1);
line(p4_x,p4_y1,p1_x,p1_y1);

line(p1_x,p1_y2,p2_x,p2_y2);
line(p2_x,p2_y2,p3_x,p3_y2);
line(p3_x,p3_y2,p4_x,p4_y2);
line(p4_x,p4_y2,p1_x,p1_y2);

phase += 0.05;
}

float magn_X(float phase)
{
return distance_to_screen / (distance - distance_to_screen - (cube_side * cos(phase)));
}