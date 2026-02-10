//this is a template for creating scatter plots of data from physics experiments

//-------ENTERING DATA, LABELS, AND EQUATION FOR CURVE------------

bool plotPoints = true;
bool plotCurve = false;

real[] xdata = {0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}; 
real x_transform(real x){ 
return x; //change to, e.g. "return x^2;" to plot x^2 on the horizontal axis. 
}

real[] ydata = {0.6355,0.8983,1.1,1.27,1.42,1.556,1.68,1.79,1.90,2.01}; 
real y_transform(real y){
return y;
}

string xAxisLabel = "Length (m)";
string yAxisLabel = "Period (s)";

//min and max x values for the curve to draw
real xmin = 0; 
real xmax = 1.1;

//min for the y axis
real ymin = 0;
real ymax = 2.1;

//define what curve to draw
//real curve(real x){
//return x;  //change to the equation for your curve
//}

//-------------AESTHETIC THINGS------------

//size of entire image in cm
real xsize = 10;
real ysize = 8;

//style of graph
//pen graphpen = deepred+linewidth(1.0 pt);

//style of dots
dotfactor = 10; //size
pen dotpen = blue; 
filltype dotfill = Fill; //can change to "NoFill" for hollow dots

//axes
real xTickSpacing = 0.2; //must be entered as a decimal
real xSubtickSpacing = 0.1; //set equal to xTickSpacing if you don't want little ticks
real yTickSpacing = 0.2;
real ySubtickSpacing = 0.05;
bool ticksGoThroughAxes = false;
bool xAxisArrow = false; 
bool yAxisArrow = false;

//gridlines
bool bigGrid = true; //gridlines for the labeled tick marks
bool smallGrid = true; //gridlines for the smaller subticks

//--------BELOW HERE YOU USUALLY DON'T NEED TO CHANGE ANYTHING------------------------

size(xsize*72/2.54, ysize*72/2.54, IgnoreAspect);

import graph;

real[] x_to_plot = map(x_transform, xdata);
real[] y_to_plot = map(y_transform, ydata);

if(plotPoints){
for(int i = 0; i< xdata.length; ++i){
dot((x_to_plot[i], y_to_plot[i]), filltype = dotfill, p = dotpen);
}}

//if(plotCurve){
//draw(graph(curve, xmin, xmax), p = graphpen);}

real xlabel_loc = 0; //what fraction down the axis you want the label
real ylabel_loc = 0.5;

arrowbar xarrow = None;
if(xAxisArrow){
xarrow = Arrow;
}

arrowbar yarrow = None;
if(yAxisArrow){
yarrow = Arrow;
}

if(ticksGoThroughAxes){
xaxis( L = xAxisLabel, Bottom, arrow = xarrow, Ticks(xTickSpacing, xSubtickSpacing), above = true);
yaxis(ymin = 0, L = yAxisLabel, Left, arrow = yarrow, Ticks(yTickSpacing, ySubtickSpacing), above = true);
}
else{
xaxis(xmin = xmin, xmax = xmax, L = xAxisLabel, axis = YZero, arrow = xarrow, LeftTicks(xTickSpacing, xSubtickSpacing));
yaxis(ymin = ymin, ymax = ymax, L = yAxisLabel, Left, arrow = yarrow, RightTicks(yTickSpacing, ySubtickSpacing));
}

if(bigGrid){
xaxis(BottomTop, invisible, Ticks(Step = xTickSpacing, extend = true, gray) );
yaxis(LeftRight, invisible, Ticks(Step = yTickSpacing, extend = true, gray) );
}

if(smallGrid){
xaxis(BottomTop, invisible, Ticks(Step = xSubtickSpacing, extend = true, lightgray) );
yaxis(LeftRight, invisible, Ticks(Step = ySubtickSpacing, extend = true, lightgray) );
}