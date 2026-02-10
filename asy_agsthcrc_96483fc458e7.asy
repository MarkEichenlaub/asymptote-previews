//TeXeR source: https://artofproblemsolving.com/texer/rrcafvvw
size(6cm);

// Parameters
real H = 10;
real xPaper = 0;
real xStart = -5;
real y0 = H/2;          // aim at middle of the sheet
real L  = 2.0;          // length of outgoing rays
int m   = 9;            // number of diffuse transmitted rays
real aMin = -60, aMax = 60; // angle span in degrees
real eps = 0.03;        // small offset so outgoing arrows don't overlap the sheet

// Geometry: the sheet
pair P0 = (xPaper,0), P1 = (xPaper,H);
draw(P0--P1, linewidth(1));

// Pens
pen inPen   = lightolive + 2bp;  // incoming ray
pen outPen  = lightolive + 0.4bp;  // outgoing thin rays

// Incoming ray from left to sheet (no arrowhead at the sheet)
draw((xStart,y0)--(xPaper,y0), inPen);

// Outgoing "diffuse" transmitted rays
for(int j=0; j<m; ++j){
  real a = aMin + (aMax - aMin)*j/(m-1);
  pair S = (xPaper + eps, y0);
  pair E = S + L*dir(a);
  draw(S--E, outPen, Arrow(5));
}