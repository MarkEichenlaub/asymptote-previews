//TeXeR source: https://artofproblemsolving.com/texer/uqgirjok

unitsize(5cm);
draw(unitcircle);

real r1 = -0.45;
real r2 = 0.9;
real r = 0.07;

dot((0,0),black+4);

filldraw(shift(r1,0)*scale(r)*unitcircle,lightgray);
filldraw(shift(r2,0)*scale(r)*unitcircle,lightgray);
label("$A$",(r1,0));
label("$B$",(r2,0));

draw((.03,0)--(r2-r,0),brown+dotted+1bp,Arrows(2mm));
label("$r_B$",((r2-r)/2,0), UnFill);

draw((-.03,0)--(r1+r,0),brown+dotted+1bp,Arrows(2mm));
label("$r_A$",((r1+r)/2,0), UnFill);