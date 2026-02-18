//https://artofproblemsolving.com/texer/nywyysmj

//------ DATA -----------------

bool plotPoints = true;
bool plotCurve = false;

real[] xdata = {3.6, 4.2, 4.8, 5.4};
real x_transform(real x){
return x; //change to, e.g. "return x^2;" to plot x^2 on the horizontal axis.
}

real[] ydata = {1/1.0, 1/0.96, 1/0.93, 1/0.90};
real y_transform(real y){
return y;
}

//define what curve to draw
real curve(real x){
return 19/(x^2);  //change to the equation for your curve
}

//style of graph line
pen graphpen = red+linewidth(2 pt);

//style of dots
dotfactor = 10; //size
pen dotpen = blue;
filltype dotfill = Fill; //can change to "NoFill" for hollow dots

//-------ESSENTIAL OPTIONS------------

string xAxisLabel = "Length (m)"; //for no label, delete the stuff between the quotes
string yAxisLabel = "Frequency (Hz)";

real xmin = 3;
real xmax = 6;
real ymin = 0.9;
real ymax = 1.2;

real xTickSpacing = 0.5;
real xSubtickSpacing = .1; //set to xTickSpacing if you don't want little ticks
real yTickSpacing = .1;
real ySubtickSpacing = .05;

//-------------ENTIRE IMAGE------------

real xsize = 10; //in cm
real ysize = 9;

//next line only used if you also set "equalAxisRatio" to "true" in the "AXES" section
real overallSize = 30;

//----------- LABEL OPTIONS ---------------

real xlabel_loc = .5; //what fraction down the axis you want the label
real ylabel_loc = .5;

real labelSize = 12;

//------------ AXES ----------

bool equalAxisRatio = false; //when true, 1 unit is same size on both axes. overwrites ysize

bool fourSides = true; //if true, draw axes on the right and top as well as left and bottom

bool xAxisRightArrow = false; //puts arrows at the end of the axes
bool xAxisLeftArrow = false;
bool yAxisUpArrow = false;
bool yAxisDownArrow = false;

bool forcexAxisAtZero = false; //x axis at y = 0, even if y extends negative
bool forceyAxisAtZero = false;

//-----------  TICK MARKS ----------------
bool showTicks = true;

bool ticksGoThroughAxes = false;

real tickSize = 6;
real subtickSize = 3;

// -----------  NUMBERING ON AXES -----------

bool axisNumbers = true;
real numberSize = 12;

bool controlDecimals = false; //next two don't do anything unless this is "true"
bool trailingZeros = true;
int numDecimalPoints = 1;

//------------ GRID -------------------

//to adjust the grid spacing, change the tick spacing

bool bigGrid = true; //gridlines for the labeled tick marks
bool smallGrid = true; //gridlines for the smaller subticks

//------------ TITLE -----------

string title = "";
real titleSize = 20;

//--------BELOW HERE YOU USUALLY DON'T NEED TO CHANGE ANYTHING------------------------

//for documentation, see https://asymptote.sourceforge.io/doc/graph.html

if(equalAxisRatio){
unitsize(overallSize);
}
else{
size(xsize*72/2.54, ysize*72/2.54, IgnoreAspect);
}

import graph;

arrowbar xarrow = None;
if(xAxisRightArrow && xAxisLeftArrow){
xarrow = Arrows;
}
else{
if(xAxisRightArrow){
xarrow = EndArrow;
}
if(xAxisLeftArrow){
xarrow = BeginArrow;
}
}

arrowbar yarrow = None;
if(yAxisUpArrow && yAxisDownArrow){
yarrow = Arrows;
}
else{
if(yAxisUpArrow){
yarrow = EndArrow;
}
if(yAxisDownArrow){
yarrow = BeginArrow;
}
}

Label xLabel = Label(s = xAxisLabel, position = xlabel_loc, p = fontsize(labelSize), filltype = Fill(p = white) );
Label yLabel = Label(s = yAxisLabel, position = ylabel_loc, p = fontsize(labelSize),filltype = Fill(p = white) );

real killZero = 9805675997679076690980969.000123;

axis xAxisType = Bottom;
axis yAxisType = Left;
if(fourSides){
xAxisType = BottomTop;
yAxisType = LeftRight;
}
if(forcexAxisAtZero){
xAxisType = YZero;
}
if(forceyAxisAtZero){
yAxisType = XZero;
killZero = 0;
}

// SEPARATED TICK FORMATS FOR X AND Y AXES
Label xTickFormat = Label(" ");
Label yTickFormat = Label(" ");

string decimalString = "";
if(controlDecimals){
if(trailingZeros){
decimalString = "%#." + string(numDecimalPoints) + "f";
}
else{
decimalString = "%." + string(numDecimalPoints) + "f";
}
}

if(axisNumbers){
xTickFormat = Label(decimalString, filltype = Fill(p = white), p = fontsize(numberSize) );
yTickFormat = Label(decimalString, filltype = Fill(p = white), p = fontsize(numberSize) );
// You can now independently control each axis - for example:
// To hide y-axis numbers only: yTickFormat = Label(" ");
}

if(!showTicks){
subtickSize = -1;
tickSize = -1;
}

ticks xticks = LeftTicks(format = xTickFormat, Step = xTickSpacing, step = xSubtickSpacing, size = subtickSize, Size = tickSize);
ticks yticks = RightTicks(format = yTickFormat, Step = yTickSpacing, step = ySubtickSpacing, size = subtickSize, Size = tickSize );

if(ticksGoThroughAxes){
xticks = Ticks(format = xTickFormat, xTickSpacing, xSubtickSpacing, size = subtickSize, Size = tickSize);
yticks = Ticks(format = yTickFormat, yTickSpacing, ySubtickSpacing, size = subtickSize, Size = tickSize);
}

dot((xmin,ymin), black+0);// so the graph package knows where to place the top and bottom x axes
dot((xmax,ymax),black+0);

//----------------DO THE DRAWING----------------

xaxis(xmin = xmin, xmax = xmax, L = xLabel, axis = xAxisType, arrow = xarrow, ticks = xticks);
yaxis(ymin = ymin, ymax = ymax, L = yLabel, axis = yAxisType, arrow = yarrow, ticks = yticks);

if(bigGrid){
xaxis(LeftRight, invisible, Ticks(Step = xTickSpacing, extend = true, gray) );
yaxis(BottomTop, invisible, Ticks(Step = yTickSpacing, extend = true, gray) );
}

if(smallGrid){
xaxis(LeftRight, invisible, Ticks(Step = xSubtickSpacing, extend = true, lightgray) );
yaxis(BottomTop, invisible, Ticks(Step = ySubtickSpacing, extend = true, lightgray) );
}

label(title, (xmax/2 + xmin/2, ymax),N, fontsize(titleSize));

real[] x_to_plot = map(x_transform, xdata);
real[] y_to_plot = map(y_transform, ydata);

if(plotPoints){
for(int i = 0; i< xdata.length; ++i){
dot((x_to_plot[i], y_to_plot[i]), filltype = dotfill, p = dotpen);
}}

if(plotCurve){
draw(graph(curve, 0.98, xmax), p = graphpen);}