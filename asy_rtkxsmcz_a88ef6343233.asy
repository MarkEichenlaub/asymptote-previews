size(10cm);

//------- BOXES---------

real top_box_x = .1+.1; //from left of table
real hang_box_y = .8/3-.1; //from floor

string top_box_name = "$A$";
string hang_box_name = "$B$";

real top_side = .1; //top box side length
real hang_side = .1;

pen boxpen = lightgray;

//---------- ROPE --------

pen ropepen = brown+linewidth(1pt);

//-------- SCENE ---------------

real table_length = 1;
real table_height = 0.5;

real gap_x = hang_side/2;

real pulley_size = top_side/4;

//-------- DISTANCES --------------

bool show_height = true; //bottom of hanging box above ground
bool show_length = true; //distance of top box from edge

pen label_pen = red;

string height_name = "$y$";//for hanging box above ground
string length_name = "$2h+y$";
string table_height_name = "$2h$";

//--------- PROBABLY DON'T MESS WITH THIS -----------

pair top_left = (0,table_height);
pair top_right = (table_length,table_height);
pair bottom_right = (table_length, 0);
pair floor_right = bottom_right + (table_length/3,0);

pair pulley_center = top_right + (gap_x + hang_side/2, top_side/2-pulley_size);
pair pulley_right = pulley_center + (pulley_size,0);
pair pulley_top = pulley_center + (0,pulley_size);

pair top_mid_right = (top_box_x,0) + (top_side, top_side/2) + top_left;
pair hang_mid_top = (pulley_right.x,hang_box_y + hang_side);

pair top_center = (top_box_x + top_side/2,table_height + top_side/2);
pair hang_center = (pulley_right.x, hang_box_y + hang_side/2);

// ---------------  DO THE DRAWING --------------

//table and floor
draw(top_left--top_right--bottom_right--floor_right, linewidth(2pt));

//pulley
draw(shift(pulley_center)*scale(pulley_size)*unitcircle);
draw(top_right--pulley_center);

//boxes
filldraw(shift((top_box_x,.005) + top_left)*scale(top_side)*box((0,0),(1,1)), boxpen); //top box
filldraw(shift(pulley_right.x-hang_side/2,hang_box_y)*scale(hang_side)*box((0,0),(1,1)), boxpen); //hanging box

label(top_box_name, top_center);
label(hang_box_name, hang_center);

//rope
draw(top_mid_right--pulley_top--arc(pulley_center,pulley_size,90,0)--hang_mid_top, ropepen);

//measurements
//box height
draw(shift(pulley_right.x,.01)*((0,0)--(0,hang_box_y-.02)),red+dotted+1bp,Arrows(2mm));
label(height_name,(pulley_right.x,hang_box_y/2), label_pen,UnFill);

//length
draw(shift(top_center.x + top_side/2,table_height + top_side+.04)*((0,0)--(table_length - top_box_x - top_side,0)), red+dotted+1bp, Bars(2mm));
label(length_name,(top_center.x + top_side/2 + (table_length - top_box_x - top_side)/2, table_height + top_side), N, label_pen,UnFill);

//table height
draw(shift(table_length-.05,0)*((0,0)--(0,table_height -.01)),red+dotted+1bp,Arrows(2mm));
label(table_height_name,(table_length-.05,table_height/2), label_pen,UnFill);