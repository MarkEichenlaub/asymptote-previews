//TeXeR source: https://artofproblemsolving.com/texer/wodfadaj

unitsize(3cm);
draw(unitcircle);

real r1 = -0.45;
real r2 = 0.9;
real r = 0.07;

real theta = 0;

dot((0,0),black+4);
filldraw(rotate(theta)*shift(r2,0)*scale(r)*unitcircle,lightgray);
//draw(arc((0,0),r2,0,theta-3), dotted);
draw(rotate(theta)*((r2,0)--(1.2,0)), arrow = Arrow(6));
label("$g_{\rm artificial}$",rotate(theta)*(1.05,0),NE);