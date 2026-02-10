//TeXeR source: https://artofproblemsolving.com/texer/fnqhpkwc

draw(unitcircle);
draw(shift(0,1.5)*scale(.4)*unitcircle);
draw((-1.1,0)--(-1.1,1),arrow = Arrow(6));
label("$v$",(-1.1,.5),W);
draw((0,1.5)--(0,.5), arrow = Arrow(6));
label("$v$",(0,1.5),E);

draw((-2,-1.1)--(2,-1.1));

draw((-1.05,0)--(-1.05,-1), arrow = Arrow(6), red);
draw((-.05,1.5)--(-.05,.5), arrow = Arrow(6), red);
label("$v$",(-1.05,-1),W,red);
label("$v$",(-.05,.5),W,red);