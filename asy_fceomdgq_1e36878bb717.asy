//-------ESSENTIAL OPTIONS------------

string xAxisLabel = "Temperature (K)"; 
string yAxisLabel = "Efficacy (lm/W)";

real xmin = 0; 
real xmax = 30000;
real ymin = 0;
real ymax = 100;

real xTickSpacing = 5000; 
real xSubtickSpacing = 1000; 
real yTickSpacing = 50;
real ySubtickSpacing = 10;

//-------------ENTIRE IMAGE------------

real xsize = 10; //in cm
real ysize = 8; 

//next line only used if you also set "equalAxisRatio" to "true" in the "AXES" section
real overallSize = 30;

//----------- LABEL OPTIONS ---------------

real xlabel_loc = 1; 
real ylabel_loc = 1;

real labelSize = 12; 

//------------ AXES ----------

bool equalAxisRatio = false; 

bool fourSides = true; 

bool xAxisRightArrow = false; 
bool xAxisLeftArrow = false;
bool yAxisUpArrow = false;
bool yAxisDownArrow = false;

bool forcexAxisAtZero = false; 
bool forceyAxisAtZero = false;

//-----------  TICK MARKS ----------------
bool showTicks = true;

bool ticksGoThroughAxes = false;

real tickSize = 6;
real subtickSize = 3;

// -----------  NUMBERING ON AXES -----------

bool axisNumbers = true;
real numberSize = 12;

bool controlDecimals = true; 
bool trailingZeros = false;
int numDecimalPoints = 0; 

//------------ GRID -------------------

bool bigGrid = true; 
bool smallGrid = true; 

//------------ TITLE -----------

string title = "Efficacy of Incandescent Bulb"; 
real titleSize = 12;

//--------BELOW HERE YOU USUALLY DON'T NEED TO CHANGE ANYTHING------------------------

real xmid = (xmin + xmax)/2;
real yrange = (ymax - ymin);

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

Label tickFormat = Label(" ");

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
tickFormat = Label(decimalString, filltype = Fill(p = white), p = fontsize(numberSize) );
}

if(!showTicks){
subtickSize = -1;
tickSize = -1;
}

ticks xticks = LeftTicks(format = tickFormat, Step = xTickSpacing, step = xSubtickSpacing, size = subtickSize, Size = tickSize);
ticks yticks = RightTicks(format = tickFormat, Step = yTickSpacing, step = ySubtickSpacing, size = subtickSize, Size = tickSize );

if(ticksGoThroughAxes){
xticks = Ticks(format = tickFormat, xTickSpacing, xSubtickSpacing, size = subtickSize, Size = tickSize);
yticks = Ticks(format = tickFormat, yTickSpacing, ySubtickSpacing, size = subtickSize, Size = tickSize);
}

dot((xmin,ymin), black+0);
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

label(title, (xmax/2 + xmin/2, ymax),2*N, fontsize(titleSize));

//------------ DRAW PLOT ---------------

pair[] pts = {
(230.4897983895371, 0),
(791.6086456378271, 0),
(1312.4054004964564, 0.07325785554276365),
(1913.1198159472042, 0.8037779257734279),
(2311.7394199915234, 4.070230671429428),
(2627.8985287885203, 10.780044802324875),
(2864.3821517224674, 16.76406127020645),
(3178.967124780528, 25.830356602288553),
(3335.0487376642222, 32.17618211539626),
(3530.7259187503787, 39.247442029424235),
(3805.109886783318, 48.49464188411939),
(4079.8571169098477, 57.19803838469456),
(4393.473391051647, 67.71447599442999),
(4787.370587879152, 78.05037234364595),
(5143.730701701274, 84.57928195192831),
(5341.950717442632, 87.8439183871163),
(5540.776170006662, 90.20221589877096),
(5859.478113458863, 93.10540655082642),
(6179.027668462798, 94.73972270993522),
(6579.221408246055, 95.64969425440457),
(6900.224011624389, 95.10879699703338),
(7301.991887146569, 93.66228734031604),
(7865.290306956465, 90.40455288490648),
(8388.75098383484, 86.78391959798995),
(9073.74220500091, 81.3520615123812),
(9799.53986801477, 74.83295998062604),
(10766.78573590846, 66.86589574377913),
(11814.433613852394, 58.53702246170613),
(12861.476054973664, 51.114488103166444),
(13787.06786946782, 45.50354180541261),
(15194.829569534417, 38.084276805715334),
(16561.421565659628, 32.29605860628443),
(18128.170975358727, 26.872192286734887),
(20095.71956166374, 21.45195858812133),
(21982.13961373131, 17.481140642973884),
(23867.954228976207, 14.416661621359783),
(26715.80795543985, 11.179633105285484),
(30004.298601440943, 8.309136041654016)
};

draw(graph(pts,operator ..),blue+linewidth(1pt));
label(minipage('Source: Tannous, C. ``Light production metrics of radiation sources." \\ European Journal of Physics 35.4 (2104): 045006.', 9cm), (xmid, ymin-yrange/5),S,fontsize(8pt));