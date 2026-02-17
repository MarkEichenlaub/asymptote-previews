//TeXeR source: https://artofproblemsolving.com/texer/warhmzet

draw(unitcircle);
draw(shift(0,1.5)*scale(.4)*unitcircle);
//draw((-1.1,0)--(-1.1,1),arrow = Arrow(6));
//label("$v$",(-1.1,.5),W);
draw((0,1.5)--(0,-.5), arrow = Arrow(6));
label("$2v$",(-.05,1.5),E);

draw((-2,-1.1)--(2,-1.1));
draw((-1.5,-1.1)--(-1.5,-2.1), arrow = Arrow(6));
label("$v$",(-1.5,-1.5),W);