//TeXeR source: https://artofproblemsolving.com/texer/mcaxwucv

draw(unitcircle);
draw(shift(4,0)*scale(1.26)*unitcircle);
draw((0,0)--(1.6,0), arrow = Arrow(6));
label("$v$",(.4,0),S);
label("$m$",(0,1),N);
label("$2m$",(4,1.26),N);

draw((0,0)--(-1.6/3,0), arrow = Arrow(6),red);
label("$v/3$",(-1.6/6,0),N,red);

draw((4,0)--(4-1.6/3,0), arrow = Arrow(6),red);
label("$v/3$",(4 - 1.6/6,0),N,red);