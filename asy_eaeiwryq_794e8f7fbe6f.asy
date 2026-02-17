//TeXeR source: https://artofproblemsolving.com/texer/eaeiwryq

draw(unitcircle);
draw(shift(0,1.5)*scale(.4)*unitcircle);
draw((-1.1,0)--(-1.1,1),arrow = Arrow(6));
label("$v$",(-1.1,1.5),W);
draw((0,1.5)--(0,4.5), arrow = Arrow(6));
label("$3v$",(-.05,3),E);

draw((-2,-1.1)--(2,-1.1));
//draw((-1.5,-1.1)--(-1.5,-2.1), arrow = Arrow(6));
//label("$v$",(-1.5,-1.5),W);