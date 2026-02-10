//TeXeR source: https://artofproblemsolving.com/texer/nfpsqxey

draw(shift(4 - sqrt(4 - .36),0)*unitcircle);
draw(shift(4,-.6)*unitcircle);
//draw(shift(4 - sqrt(4-.36),0)*((0,0)--(1,1)), arrow = Arrow(6),blue);
//label("$v_1$",(3.4,.8),blue);
real deltax = 1.907;
draw((4,-.6)--(4 + deltax, -.6 -.6), arrow = Arrow(6),blue);
label("$v_2$",(5.1,-1.2),blue);