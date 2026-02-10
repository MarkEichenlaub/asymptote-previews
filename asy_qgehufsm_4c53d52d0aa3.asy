//TeXeR source: https://artofproblemsolving.com/texer/rgxhzets
size(6cm);

// Parameters
int n = 40;
real H = 10;
real xPaper = 0;
real xStart = -5;
real xPast2 = 1;      // 1 unit past the second sheet
int seed = 15;        // keep your seed
srand(seed);
real xPaper2 = 2;

// Reflection geometry
real reflLen1 = 2;     // reflection length from sheet 1 (front side)
real reflLen2 = 2.02;  // reflection from sheet 2 toward sheet 1 (kept slightly >2 so it reaches x=0)
real reflAng  = 185;   // degrees from +x (slightly downward to the left)

// Back-side-of-sheet-1 rule:
//   - 50% transmit: continue same direction *another 2 units* with arrow at far end
//   - 50% reflect: go horizontally right by 1 unit with arrow at far end
real back_transmit_extra = 2;
real back_reflect_len = 1;

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

  // first sheet: 50% transmit; otherwise reflect from sheet 1 (front side)
  bool t1 = (rand()%2)==0;
  if(t1){
    // Transmit to second sheet (NO arrowhead yet)
    draw((xPaper,y)--(xPaper2,y), rayPen);

    // second sheet: 50% transmit 1 unit past; 50% reflect back toward sheet 1
    bool t2 = (rand()%2)==0;
    if(t2){
      // Transmit past sheet 2 with arrow at far end
      draw((xPaper2,y)--(xPaper2 + xPast2, y), rayPen, Arrow(6));
    } else {
      // Reflect from sheet 2 at 185°
      pair S2 = (xPaper2,y);
      pair dirv = dir(reflAng); // unit vector (left & slightly down)

      // Distance along dirv to hit the back side of sheet 1 (x = xPaper)
      real tHit = (xPaper - xPaper2)/dirv.x; // >0 when heading left
      real seg1 = min(reflLen2, tHit);

      // Leg from sheet 2 toward sheet 1 (NO arrowhead)
      pair Pseg = S2 + seg1*dirv;
      draw(S2--Pseg, rayPen);

      if (tHit <= reflLen2 && Pseg.y >= 0 && Pseg.y <= H){
        // We reached sheet 1 from behind at Pseg (x=xPaper)
        bool t3 = (rand()%2)==0; // back-side transmit vs reflect
        if(t3){
          // Transmit through sheet 1 from behind:
          // continue in same direction ANOTHER 2 units, arrow at far end
          pair Pend = Pseg + back_transmit_extra*dirv;
          draw(Pseg--Pend, rayPen, Arrow(6));
        } else {
          // Reflect at back side: go horizontally right 1 unit, arrow at far end
          pair Pend = Pseg + (back_reflect_len,0);
          draw(Pseg--Pend, rayPen, Arrow(6));
        }
      } else {
        // Did not reach sheet 1 within the reflection span; arrow at end of the reflected leg
        draw(S2--Pseg, rayPen, Arrow(6));
      }
    }
  } else {
    // Reflect from first sheet (front side): 2 units at 185° with arrow at end
    pair reflEnd1 = (xPaper,y) + reflLen1*dir(reflAng);
    draw((xPaper,y)--reflEnd1, rayPen, Arrow(6));
  }
}