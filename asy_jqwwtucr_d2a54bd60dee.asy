import graph;

// --- Utility function ---
// Returns the rightmost intersection point of segment SP with circle centered at (x_m2,0) radius R_m.
// If there’s no intersection, returns P.
pair circleSegRightmostPoint(pair S, pair P, real x_m2, real R_m) {
  pair C = (x_m2,0);
  pair[] X = intersectionpoints(circle(C,R_m), S--P);
  if (X.length == 0) return P;
  if (X.length == 1) return X[0];
  return (X[0].x > X[1].x) ? X[0] : X[1];
}

unitsize(1cm);

path person = (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle; 

real R_s = 1;
real R_e = 0.5;
real R_m = 0.2;

real x_s = 10;
real x_m = 2;
real x_m2 = 2.5;
real R_s2 = 1.5;

// Draw Sun, Earth, Moon
filldraw(shift((x_s,0))*scale(R_s)*unitcircle, white);
label("Sun", (x_s,-R_s),S);
label("Moon", (x_m,-R_m),S);
label("Earth", (0,-R_e),S);

pair P = (R_e,0);
pair ST = (x_s,R_s);
pair SB = (x_s,-R_s);

int n = 3;

for(int i = -n+1; i<n; ++i){
  pair S = (x_s,R_s*i/n);
  pair E = circleSegRightmostPoint(S,P,x_m2,R_m);
  if(abs(E.y)>R_m) E = P;
  draw(S--E);
}
draw(ST--P);
draw(SB--P);

// Earth
filldraw(scale(R_e)*unitcircle,blue);
draw(shift((R_e,0))*rotate(-90)*scale(.4)*person,red);

// Moon
filldraw(shift((x_m,0))*scale(R_m)*unitcircle, gray);
draw(shift((x_m2,0))*scale(R_m)*unitcircle, dotted);