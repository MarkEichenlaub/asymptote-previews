//TeXeR source: https://artofproblemsolving.com/texer/eyngrkol

draw(unitcircle);
draw(shift(4,0)*unitcircle);
draw((4,0)--(2.4,0), arrow = Arrow(6));
label("$v$",(2.4,0),S);
draw((0,0)--(.8,0), arrow = Arrow(6),red);
draw((4,0)--(4.8,0), arrow = Arrow(6),red);
label("$v/2$",(.4,0),N, red);
label("$v/2$",(4.4,0),N,red);