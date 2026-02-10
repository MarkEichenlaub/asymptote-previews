size(12cm);

int nRays = 14;
real depth = 10;
real panelW = 7;
real gap    = 2.5;
int seed    = 12345;
srand(seed);

pen blueEdge   = deepblue + 1.2bp;
pen mediumFill = rgb(0.82,0.90,1.00);
pen lightolive = rgb(0.65,0.72,0.42);
pen rayPen     = lightolive + 2bp;

real leftA = 0;
real leftB = leftA + panelW + gap;
real leftC = leftB + panelW + gap;

void drawMedium(real left){
  fill(box((left,0),(left+panelW,depth)), mediumFill);
}

// Evenly spaced x positions
real[] xs01(int n){
  real[] xs;
  for(int i=0;i<n;++i) xs.push((i+1)/(n+1.0));
  return xs;
}
real[] xs = xs01(nRays);

// Draw a downward ray (from top y=depth) of length L with a triangle arrowhead
void downRay(real x, real L){
  L = min(depth, max(1e-3,L));
  real yTop = depth;
  real yBot = depth - L;
  draw( (x,yTop) -- (x,yBot), rayPen );
  real s = 0.25;
  path head = (x,yBot) -- (x - s/2, yBot + s) -- (x + s/2, yBot + s) -- cycle;
  fill(head, lightolive);
  draw(head, lightolive);
}

// A: deterministic L=5
drawMedium(leftA);
label("A", (leftA + panelW/2, -0.8), fontsize(12pt));
for(int i=0;i<nRays;++i) downRay(leftA + xs[i]*panelW, 5);

// B: exponential(mean=5)
drawMedium(leftB);
label("B", (leftB + panelW/2, -0.8), fontsize(12pt));
real meanExp = 5;
for(int i=0;i<nRays;++i){
  real U = unitrand();
  real L = -meanExp*log(1 - U)+.3;
  downRay(leftB + xs[i]*panelW, L);
}

// C: geometric(mean=2.5) on {1,2,...}, then double the length
drawMedium(leftC);
label("C", (leftC + panelW/2, -0.8), fontsize(12pt));
real p = 1/2.5;                 // p = 0.4 -> mean 1/p = 2.5
real log1mp = log(1 - p);
for(int i=0;i<nRays;++i){
  real U = max(unitrand(), 1e-12);
  int  K = 1 + floor(log(U)/log1mp);
  real L = 2*(real)K;          // only even depths; mean length 5
  downRay(leftC + xs[i]*panelW, L);
}