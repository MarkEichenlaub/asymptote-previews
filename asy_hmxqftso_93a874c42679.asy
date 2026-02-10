//TeXeR source: https://artofproblemsolving.com/texer/vsacxgwr
size(6cm);

// Parameters
int n = 40;
real H = 10;
real xPaper = 0;
real xStart = -5;
real xPast  = 1;    // 1 unit past the paper
int seed = 15;   // keep same seed so same rays transmit
srand(seed);

// Geometry
pair P0 = (xPaper,0), P1 = (xPaper,H);
draw(P0--P1, linewidth(1));

// Rays
pen rayPen = lightolive + 1.2bp;
real yMin = 0.1*H, yMax = 0.9*H;
real dy = (yMax - yMin)/n;

for(int i=0; i<n; ++i){
  real y = yMin + (i + 0.5)*dy;

  bool transmit = (rand()%2)==0;

  if(!transmit){
    // absorbed at sheet: draw to sheet, arrow at absorption
    draw((xStart,y)--(xPaper,y), rayPen, Arrow(6));
  } else {
    // transmitted: draw single continuous path, arrow only at end
    draw((xStart,y)--(xPast,y), rayPen, Arrow(6));
  }
}