//TeXeR source: https://artofproblemsolving.com/texer/ltkaeumt

unitsize(3cm);
draw(unitcircle);

real r1 = -0.45;
real r2 = 0.9;
real r = 0.07;

real theta = 70;
pair pos = .9*dir(theta);

dot((0,0),black+4);
filldraw(rotate(theta)*shift(r2,0)*scale(r)*unitcircle,lightgray);
draw(arc((0,0),r2,0,theta-3), dotted);
draw(rotate(theta)*((r2,0)--(.6,0)), arrow = Arrow(6));
label("$a_c$",rotate(theta)*(.7,0),E);

draw(shift(pos)*rotate(theta)*scale(.3)*((0,0)--(0,1)), arrow = Arrow(6));
label("$a_t$",shift(pos)*rotate(theta)*scale(.15)*(0,1), SW);