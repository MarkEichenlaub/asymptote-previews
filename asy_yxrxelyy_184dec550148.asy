//TeXeR source: https://artofproblemsolving.com/texer/yxrxelyy

draw((-3,0)--(3,0));
draw(((-2,0)--(2,0)--(2,1)--(-2,1)--cycle));
draw(((-1,1)--(1,1)--(1,2)--(-1,2)--cycle));
draw((2,.5)--(3,.5));
draw((3,1.5)--(1,1.5));
draw(shift(3,1)*scale(.5)*unitcircle);
draw((3,1)--(4,1), arrow = Arrow(6));

label("$2m$",(0,.5));
label("$m$",(0,1.5));