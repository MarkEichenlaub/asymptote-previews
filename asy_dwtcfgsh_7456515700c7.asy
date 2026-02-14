//this is a template for creating scatter plots of data from physics experiments

//-------ENTERING DATA, LABELS, AND EQUATION FOR CURVE------------

bool plotPoints = true;
bool plotCurve = true;

real[] xdata = {0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}; 
real x_transform(real x){ 
return x; //change to, e.g. "return x^2;" to plot x^2 on the horizontal axis. 
}

real[] ydata = {0.5265, 0.74675, 0.91375, 1.051, 1.1845, 1.288, 1.3955, 1.492, 1.5785, 1.662}; 
real y_transform(real y){
return y*y;
}

string xAxisLabel = "$\ell \;\; \mathrm{ (m)}$";
string yAxisLabel = "$T^2 \;\;\mathrm{(s^2)}$";

//min and max x values for the curve to draw
real xmin = 0; 
real xmax = 1.1;

//min for the y axis
real ymin = 0;
real ymax = 3.0;

//define what curve to draw
real curve(real x){
return 2.7771*x;  //change to the equation for your curve
}

//-------------AESTHETIC THINGS------------

//size of entire image in cm
real xsize = 10;
real ysize = 8;

//style of graph
pen graphpen = deepred+linewidth(1.0 pt);

//style of dots
dotfactor = 10; //size
pen dotpen = blue; 
filltype dotfill = Fill; //can change to "NoFill" for hollow dots

//axes
real xTickSpacing = 0.2; //must be entered as a decimal
real xSubtickSpacing = 0.05; //set equal to xTickSpacing if you don't want little ticks
real yTickSpacing = 1.0;
real ySubtickSpacing = 0.25;
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

if(plotCurve){
draw(graph(curve, xmin, xmax), p = graphpen);}


real xlabel_loc = 0.5; //what fraction down the axis you want the label
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
xaxis(xmin = xmin, xmax = xmax, L = xAxisLabel, axis = YZero, arrow = xarrow, Ticks(xTickSpacing, xSubtickSpacing));
yaxis(ymin = ymin, ymax = ymax, L = yAxisLabel, axis = XZero, arrow = yarrow, Ticks(yTickSpacing, ySubtickSpacing));
}
else{
xaxis(xmin = xmin, xmax = xmax, L = xAxisLabel, axis = YZero, arrow = xarrow, LeftTicks(xTickSpacing, xSubtickSpacing));
yaxis(ymin = ymin, ymax = ymax, L = yAxisLabel, axis = XZero, arrow = yarrow, RightTicks(yTickSpacing, ySubtickSpacing));
}

if(bigGrid){
xaxis(LeftRight, invisible, Ticks(Step = xTickSpacing, extend = true, gray) );
yaxis(BottomTop, invisible, Ticks(Step = yTickSpacing, extend = true, gray) );
}

if(smallGrid){
xaxis(LeftRight, invisible, Ticks(Step = xSubtickSpacing, extend = true, lightgray) );
yaxis(BottomTop, invisible, Ticks(Step = ySubtickSpacing, extend = true, lightgray) );
}