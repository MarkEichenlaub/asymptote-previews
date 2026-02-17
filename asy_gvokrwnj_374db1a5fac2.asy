size(6cm);

// Parameters
int n = 40;
real H = 10;
real xPaper = 0;
real xStart = -5;
real xPast2 = 1;    // 1 unit past the second sheet
int seed = 15;      // keep your seed
srand(seed);
real xPaper2 = 2;
real reflLen = 2;   // reflected distance
real reflAng = 185; // degrees from +x (slightly downward to the left)

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

  // incoming segment to first sheet (NO arrowhead)
  draw((xStart,y)--(xPaper,y), rayPen);

  // first sheet: 50% transmit toward second sheet; otherwise reflect
  bool t1 = (rand()%2)==0;
  if(t1){
    // transmit toward second sheet
    // draw to second sheet with NO arrowhead yet
    draw((xPaper,y)--(xPaper2,y), rayPen);

    // second sheet: 50% absorbed at sheet 2 (arrow at sheet), 50% transmit past (arrow at the far end)
    bool t2 = (rand()%2)==0;
    if(t2){
      // transmit 1 unit past second sheet WITH arrowhead at the far end
      draw((xPaper2,y)--(xPaper2 + xPast2, y), rayPen, Arrow(6));
    } else {
      // absorbed at sheet 2: put arrowhead at the sheet by drawing the prior segment WITH arrow
      // (re-draw from first sheet to second with arrowhead at xPaper2)
      draw((xPaper,y)--(xPaper2,y), rayPen, Arrow(6));
    }
  } else {
    // reflect from first sheet: draw 2 units at 185° WITH arrowhead at the reflected end
    pair reflEnd = (xPaper,y) + reflLen*dir(reflAng);
    draw((xPaper,y)--reflEnd, rayPen, Arrow(6));
  }
}