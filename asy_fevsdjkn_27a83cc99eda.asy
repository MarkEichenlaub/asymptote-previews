size(5cm);
defaultpen(fontsize(10pt));

real M = 2, m = 1, r = 20;

filldraw(scale(M)*unitcircle, gray(0.9));
filldraw(circle((r, 0), m), gray(0.6));

dot("I", (r*0.77, 0), dir(-90));
dot("II", (r*1.35, 0), dir(-90));
dot("III", 0.95*r*dir(57), dir(-90));
dot("IV", r*0.3*dir(180), dir(90));