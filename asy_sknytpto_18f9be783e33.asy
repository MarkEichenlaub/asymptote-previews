//TeXeR source: https://artofproblemsolving.com/texer/sknytpto

draw(unitcircle);
draw(shift(4,0)*unitcircle);
draw((0,0)--(-0.8,0), arrow = Arrow(6));
label("$v/2$",(-.4,0),S);
draw((4,.1)--(3.2,.1), arrow = Arrow(6),red);
label("$v/2$",(3.6,.1),N,red);
draw((4,0)--(4.8,0), arrow = Arrow(6));
label("$v/2$",(-.4,.1),N, red);
label("$v/2$",(4.4,0),S);
draw((0,.1)--(-.8,.1),arrow = Arrow(6),red);