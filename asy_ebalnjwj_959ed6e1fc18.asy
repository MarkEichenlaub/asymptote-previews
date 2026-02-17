size(6cm);

// Parameters
int n = 40;
real H = 10;
real xPaper = 0;
real xStart = -5;
real xPast2 = 1;    // 1 unit past the second sheet
int seed = 15;      // keep the same seed and RNG order
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

  // Preserve original randomness sequence:
  bool t1 = (rand()%2)==0; // first sheet decision

  if(!t1){
    // absorbed at first sheet: one arrow at absorption point
    draw( (xStart,y)--(xPaper,y), rayPen, Arrow(6) );
  } else {
    // transmitted through first; only now decide second, as before
    bool t2 = (rand()%2)==0;

    if(!t2){
      // absorbed at second sheet: single path to second sheet with arrow there
      draw( (xStart,y)--(xPaper2,y), rayPen, Arrow(6) );
    } else {
      // transmitted past second: single path all the way, arrow only at the end
      draw( (xStart,y)--(xPaper2 + xPast2, y), rayPen, Arrow(6) );
    }
  }
}