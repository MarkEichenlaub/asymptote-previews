//this is a template for creating scatter plots of data from physics experiments

//-------ENTERING DATA, LABELS, AND EQUATION FOR CURVE------------

bool plotPoints = true;
bool plotCurve = true;

real[] xdata = {0.22,0.32,0.40,0.46,0.50,0.55,0.64,0.91}; 
real x_transform(real x){ 
return x; //change to, e.g. "return x^2;" to plot x^2 on the horizontal axis. 
}

real[] ydata = {0.25,0.5,0.75,1.0,1.25,1.5,2.0,4.0}; 
real y_transform(real y){
return y;
}

string yAxisLabel = "Height (m)";
string xAxisLabel = "Time (s)";

//min and max y values for the curve to draw
real xmin = 0; 
real xmax = 0.95;

//min for the y axis
real ymin = 0;
real ymax = 4.25;

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
real xTickSpacing = 0.1; //must be entered as a decimal
real xSubtickSpacing = 0.05; //set equal to xTickSpacing if you don't want little ticks
real yTickSpacing = 1.0;
real ySubtickSpacing = 0.25;
bool ticksGoThroughAxes = false;
bool xAxisArrow = true; 
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
xaxis( L = xAxisLabel, Bottom, arrow = xarrow, Ticks(xTickSpacing, xSubtickSpacing));
yaxis(ymin = 0, L = yAxisLabel, Left, arrow = yarrow, Ticks(yTickSpacing, ySubtickSpacing));
}
else{
xaxis(xmin = xmin, xmax = xmax, L = xAxisLabel, YZero, arrow = xarrow, LeftTicks(xTickSpacing, xSubtickSpacing));
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