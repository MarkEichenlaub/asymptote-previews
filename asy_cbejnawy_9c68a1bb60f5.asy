//TeXeR source: https://artofproblemsolving.com/texer/wwaxmnkh
size(6cm);

// Parameters
int n = 40;
real H = 10;
real xPaper = 0;
real xStart = -5;
real xPast  = 1;    // 1 unit past the paper
int seed = 15;   // change for a different random pattern
srand(seed);
real xPaper2 = 2;

// Geometry
pair P0 = (xPaper,0), P1 = (xPaper,H);
path paper = P0--P1;
draw(paper, linewidth(1));
draw(shift((xPaper2,0))*paper, linewidth(1));

// Rays
pen rayPen = lightolive + 1.2bp;
real yMin = 0.1*H, yMax = 0.9*H;
real dy = (yMax - yMin)/n;

for(int i=0; i<n; ++i){
  real y = yMin + (i + 0.5)*dy;
  // incoming segment
  draw((xStart,y)--(xPaper,y), rayPen, Arrow(6));
  // 50% chance to continue 1 unit past the paper
  if((rand()%2)==0){
    draw((xPaper,y)--(xPast,y), rayPen, Arrow(6));
  }
}