//TeXeR source: https://artofproblemsolving.com/texer/cynmxjba

draw(unitcircle);
draw(shift(4,0)*scale(1.26)*unitcircle);
draw((0,0)--(-1.6*1/3,0), arrow = Arrow(6));
label("$v/3$",(-.4,0),S);
label("$m$",(0,1),N);
label("$2m$",(4,1.26),N);
draw((4,0)--(4+1.6*2/3,0), arrow = Arrow(6));
label("$\frac{2v}{3}$",(4+1.6*2/6), S);